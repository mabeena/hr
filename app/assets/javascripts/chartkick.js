/*
 * Chartkick.js
 * Create beautiful Javascript charts with minimal code
 * https://github.com/ankane/chartkick.js
 * v1.2.2
 * MIT License
 */

/*jslint browser: true, indent: 2, plusplus: true, vars: true */

(function (window) {
  'use strict';

  var config = window.Chartkick || {};
  var Chartkick, ISO8601_PATTERN, DECIMAL_SEPARATOR, adapters = [];

  // helpers

  function isArray(variable) {
    return Object.prototype.toString.call(variable) === "[object Array]";
  }

  function isFunction(variable) {
    return variable instanceof Function;
  }

  function isPlainObject(variable) {
    return !isFunction(variable) && variable instanceof Object;
  }

  // https://github.com/madrobby/zepto/blob/master/src/zepto.js
  function extend(target, source) {
    var key;
    for (key in source) {
      if (isPlainObject(source[key]) || isArray(source[key])) {
        if (isPlainObject(source[key]) && !isPlainObject(target[key])) {
          target[key] = {};
        }
        if (isArray(source[key]) && !isArray(target[key])) {
          target[key] = [];
        }
        extend(target[key], source[key]);
      } else if (source[key] !== undefined) {
        target[key] = source[key];
      }
    }
  }

  function merge(obj1, obj2) {
    var target = {};
    extend(target, obj1);
    extend(target, obj2);
    return target;
  }

  // https://github.com/Do/iso8601.js
  ISO8601_PATTERN = /(\d\d\d\d)(\-)?(\d\d)(\-)?(\d\d)(T)?(\d\d)(:)?(\d\d)?(:)?(\d\d)?([\.,]\d+)?($|Z|([\+\-])(\d\d)(:)?(\d\d)?)/i;
  DECIMAL_SEPARATOR = String(1.5).charAt(1);

  function parseISO8601(input) {
    var day, hour, matches, milliseconds, minutes, month, offset, result, seconds, type, year;
    type = Object.prototype.toString.call(input);
    if (type === '[object Date]') {
      return input;
    }
    if (type !== '[object String]') {
      return;
    }
    if (matches = input.match(ISO8601_PATTERN)) {
      year = parseInt(matches[1], 10);
      month = parseInt(matches[3], 10) - 1;
      day = parseInt(matches[5], 10);
      hour = parseInt(matches[7], 10);
      minutes = matches[9] ? parseInt(matches[9], 10) : 0;
      seconds = matches[11] ? parseInt(matches[11], 10) : 0;
      milliseconds = matches[12] ? parseFloat(DECIMAL_SEPARATOR + matches[12].slice(1)) * 1000 : 0;
      result = Date.UTC(year, month, day, hour, minutes, seconds, milliseconds);
      if (matches[13] && matches[14]) {
        offset = matches[15] * 60;
        if (matches[17]) {
          offset += parseInt(matches[17], 10);
        }
        offset *= matches[14] === '-' ? -1 : 1;
        result -= offset * 60 * 1000;
      }
      return new Date(result);
    }
  }
  // end iso8601.js

  function negativeValues(series) {
    var i, j, data;
    for (i = 0; i < series.length; i++) {
      data = series[i].data;
      for (j = 0; j < data.length; j++) {
        if (data[j][1] < 0) {
          return true;
        }
      }
    }
    return false;
  }

  function jsOptionsFunc(defaultOptions, hideLegend, setMin, setMax, setStacked) {
    return function (series, opts, chartOptions) {
      var options = merge({}, defaultOptions);
      options = merge(options, chartOptions || {});

      // hide legend
      // this is *not* an external option!
      if (opts.hideLegend) {
        hideLegend(options);
      }

      // min
      if ("min" in opts) {
        setMin(options, opts.min);
      } else if (!negativeValues(series)) {
        setMin(options, 0);
      }

      // max
      if ("max" in opts) {
        setMax(options, opts.max);
      }

      if (opts.stacked) {
        setStacked(options);
      }

      if (opts.colors) {
        options.colors = opts.colors;
      }

      // merge library last
      options = merge(options, opts.library || {});

      return options;
    };
  }

  function setText(element, text) {
    if (document.body.innerText) {
      element.innerText = text;
    } else {
      element.textContent = text;
    }
  }

  function chartError(element, message) {
    setText(element, "Error Loading Chart: " + message);
    element.style.color = "#ff0000";
  }

  function getJSON(element, url, success) {
    var $ = window.jQuery || window.Zepto || window.$;
    $.ajax({
      dataType: "json",
      url: url,
      success: success,
      error: function (jqXHR, textStatus, errorThrown) {
        var message = (typeof errorThrown === "string") ? errorThrown : errorThrown.message;
        chartError(element, message);
      }
    });
  }

  function errorCatcher(chart, callback) {
    try {
      callback(chart);
    } catch (err) {
      chartError(chart.element, err.message);
      throw err;
    }
  }

  function fetchDataSource(chart, callback) {
    if (typeof chart.dataSource === "string") {
      getJSON(chart.element, chart.dataSource, function (data, textStatus, jqXHR) {
        chart.data = data;
        errorCatcher(chart, callback);
      });
    } else {
      chart.data = chart.dataSource;
      errorCatcher(chart, callback);
    }
  }

  // type conversions

  function toStr(n) {
    return "" + n;
  }

  function toFloat(n) {
    return parseFloat(n);
  }

  function toDate(n) {
    if (typeof n !== "object") {
      if (typeof n === "number") {
        n = new Date(n * 1000); // ms
      } else { // str
        // try our best to get the str into iso8601
        // TODO be smarter about this
        var str = n.replace(/ /, "T").replace(" ", "").replace("UTC", "Z");
        n = parseISO8601(str) || new Date(n);
      }
    }
    return n;
  }

  function toArr(n) {
    if (!isArray(n)) {
      var arr = [], i;
      for (i in n) {
        if (n.hasOwnProperty(i)) {
          arr.push([i, n[i]]);
        }
      }
      n = arr;
    }
    return n;
  }

  function sortByTime(a, b) {
    return a[0].getTime() - b[0].getTime();
  }
  if (window.google && window.google.setOnLoadCallback) {
    var GoogleChartsAdapter = new function () {
      var google = window.google;

      var loaded = {};
      var callbacks = [];

      var runCallbacks = function () {
        var cb, call;
        for (var i = 0; i < callbacks.length; i++) {
          cb = callbacks[i];
          call = google.visualization && ((cb.pack == "corechart" && google.visualization.LineChart) || (cb.pack == "timeline" && google.visualization.Timeline))
          if (call) {
            cb.callback();
            callbacks.splice(i, 1);
            i--;
          }
        }
      };

      var waitForLoaded = function (pack, callback) {
        if (!callback) {
          callback = pack;
          pack = "corechart";
        }

        callbacks.push({pack: pack, callback: callback});

        if (loaded[pack]) {
          runCallbacks();
        } else {
          loaded[pack] = true;

          // https://groups.google.com/forum/#!topic/google-visualization-api/fMKJcyA2yyI
          var loadOptions = {
            packages: [pack],
            callback: runCallbacks
          };
          if (config.language) {
            loadOptions.language = config.language;
          }
          google.load("visualization", "1", loadOptions);
        }
      };

      // Set chart options
      var defaultOptions = {
        chartArea: {},
        fontName: "Helvetica, sans-serif",
        pointSize: 6,
        legend: {
          textStyle: {
            fontSize: 18,
            color: "#000"
          },
          alignment: "center",
          position: "right"
        },
        curveType: "function",
        hAxis: {
          textStyle: {
            color: "#000",
            fontSize: 18
          },
          gridlines: {
            color: "transparent"
          },
          baselineColor: "#000",
          viewWindow: {}
        },
        vAxis: {
          textStyle: {
            color: "#000",
            fontSize: 18
          },
          baselineColor: "#000",
          viewWindow: {}
        },
        tooltip: {
          textStyle: {
            color: "#000",
            fontSize: 12
          }
        }
      };

      var hideLegend = function (options) {
        options.legend.position = "none";
      };

      var setMin = function (options, min) {
        options.vAxis.viewWindow.min = min;
      };

      var setMax = function (options, max) {
        options.vAxis.viewWindow.max = max;
      };

      var setBarMin = function (options, min) {
        options.hAxis.viewWindow.min = min;
      };

      var setBarMax = function (options, max) {
        options.hAxis.viewWindow.max = max;
      };

      var setStacked = function (options) {
        options.isStacked = true;
      };

      var jsOptions = jsOptionsFunc(defaultOptions, hideLegend, setMin, setMax, setStacked);

      // cant use object as key
      var createDataTable = function (series, columnType) {
        var data = new google.visualization.DataTable();
        data.addColumn(columnType, "");

        var i, j, s, d, key, rows = [];
        for (i = 0; i < series.length; i++) {
          s = series[i];
          data.addColumn("number", s.name);

          for (j = 0; j < s.data.length; j++) {
            d = s.data[j];
            key = (columnType === "datetime") ? d[0].getTime() : d[0];
            if (!rows[key]) {
              rows[key] = new Array(series.length);
            }
            rows[key][i] = toFloat(d[1]);
          }
        }

        var rows2 = [];
        for (i in rows) {
          if (rows.hasOwnProperty(i)) {
            rows2.push([(columnType === "datetime") ? new Date(toFloat(i)) : i].concat(rows[i]));
          }
        }
        if (columnType === "datetime") {
          rows2.sort(sortByTime);
        }
        data.addRows(rows2);

        return data;
      };

      var resize = function (callback) {
        if (window.attachEvent) {
          window.attachEvent("onresize", callback);
        } else if (window.addEventListener) {
          window.addEventListener("resize", callback, true);
        }
        callback();
      };

      this.renderLineChart = function (chart) {
        waitForLoaded(function () {
          var options = jsOptions(chart.data, chart.options);
          var data = createDataTable(chart.data, chart.options.discrete ? "string" : "datetime");
          chart.chart = new google.visualization.LineChart(chart.element);
          resize(function () {
            chart.chart.draw(data, options);
          });
        });
      };

      this.renderPieChart = function (chart) {
        waitForLoaded(function () {
          var chartOptions = {
            chartArea: {
              top: "10%",
              height: "80%"
            }
          };
          if (chart.options.colors) {
            chartOptions.colors = chart.options.colors;
          }
          var options = merge(merge(defaultOptions, chartOptions), chart.options.library || {});
		  var options = {
          	chartArea:{left:60, top:60, width:'85%', height:'75%'},
          	title: "Employee Breakdown By Role",
          	titleTextStyle: {fontSize: 21},
          	fontSize: 16,
          	backgroundColor: "#fff",
          	height: 320,
          	width: 600
          };
          var data = new google.visualization.DataTable();
          data.addColumn("string", "");
          data.addColumn("number", "Value");
          data.addRows(chart.data);

          chart.chart = new google.visualization.PieChart(chart.element);
          resize(function () {
            chart.chart.draw(data, options);
          });
        });
      };

      this.renderColumnChart = function (chart) {
        waitForLoaded(function () {
          var options = jsOptions(chart.data, chart.options);
          var options = {
          	chartArea:{left:100, top:60, width:'75%', height:'65%'},
          	title: "Employee Breakdown By Level",
          	titleTextStyle: {fontSize: 21},
          	fontSize: 16,
          	backgroundColor: "#F3F9FB",
          	height: 320,
          	width: 600,
          	legend: 'none',
          	colors:['orange'],
          	bar: { 
          		groupWidth: "95%"
          	},
            vAxis: {
            	ticks: [0,20,40,60,80,100,120,140,160], count: 9,
            	gridlines: {
            		color: "#000"
            	}
            }
          };
          var data = createDataTable(chart.data, "string");
          chart.chart = new google.visualization.ColumnChart(chart.element);
          resize(function () {
            chart.chart.draw(data, options);
          });
        });
      };

      this.renderBarChart = function (chart) {
        waitForLoaded(function () {
          var options = jsOptions(chart.data, chart.options);
          var options = {
          	chartArea:{left:120, top:60, width:'70%', height:'65%'},
          	title: "Employee Education Level",
          	titleTextStyle: {fontSize: 21},
          	fontSize: 16,
          	backgroundColor: "#F3F9FB",
          	height: 320,
          	width: 600,
          	legend: 'none',
          	colors:['#4FB34F'],
          	bar: { 
          		groupWidth: "82%"
          	},
            hAxis: { 
            	ticks: [0,30,60,90,120,150], count: 6,
            	gridlines: {
            		color: "#000"
            	}
            }
          };
          var data = createDataTable(chart.data, "string");
          chart.chart = new google.visualization.BarChart(chart.element);
          resize(function () {
            chart.chart.draw(data, options);
          });
        });
      };
    };

    adapters.push(GoogleChartsAdapter);
  }

  // TODO add adapter option
  // TODO remove chartType if cross-browser way
  // to get the name of the chart class
  function renderChart(chartType, chart) {
    var i, adapter, fnName;
    fnName = "render" + chartType;

    for (i = 0; i < adapters.length; i++) {
      adapter = adapters[i];
      if (isFunction(adapter[fnName])) {
        return adapter[fnName](chart);
      }
    }
    throw new Error("No adapter found");
  }

  // process data

  function processSeries(series, opts, time) {
    var i, j, data, r, key;

    // see if one series or multiple
    if (!isArray(series) || typeof series[0] !== "object" || isArray(series[0])) {
      series = [{name: "Value", data: series}];
      opts.hideLegend = true;
    } else {
      opts.hideLegend = false;
    }
    if (opts.discrete) {
      time = false;
    }

    // right format
    for (i = 0; i < series.length; i++) {
      data = toArr(series[i].data);
      r = [];
      for (j = 0; j < data.length; j++) {
        key = data[j][0];
        key = time ? toDate(key) : toStr(key);
        r.push([key, toFloat(data[j][1])]);
      }
      if (time) {
        r.sort(sortByTime);
      }
      series[i].data = r;
    }

    return series;
  }

  function processSimple(data) {
    var perfectData = toArr(data), i;
    for (i = 0; i < perfectData.length; i++) {
      perfectData[i] = [toStr(perfectData[i][0]), toFloat(perfectData[i][1])];
    }
    return perfectData;
  }

  function processTime(data)
  {
    var i;
    for (i = 0; i < data.length; i++) {
      data[i][1] = toDate(data[i][1]);
      data[i][2] = toDate(data[i][2]);
    }
    return data;
  }
  
  function processLineData(chart) {
    chart.data = processSeries(chart.data, chart.options, true);
    renderChart("LineChart", chart);
  }

  function processColumnData(chart) {
    chart.data = processSeries(chart.data, chart.options, false);
    renderChart("ColumnChart", chart);
  }

  function processPieData(chart) {
    chart.data = processSimple(chart.data);
    renderChart("PieChart", chart);
  }

  function processBarData(chart) {
    chart.data = processSeries(chart.data, chart.options, false);
    renderChart("BarChart", chart);
  }

  function setElement(chart, element, dataSource, opts, callback) {
    if (typeof element === "string") {
      element = document.getElementById(element);
    }
    chart.element = element;
    chart.options = opts || {};
    chart.dataSource = dataSource;
    Chartkick.charts[element.id] = chart;
    fetchDataSource(chart, callback);
  }

  // define classes

  Chartkick = {
    LineChart: function (element, dataSource, opts) {
      setElement(this, element, dataSource, opts, processLineData);
    },
    PieChart: function (element, dataSource, opts) {
      setElement(this, element, dataSource, opts, processPieData);
    },
    ColumnChart: function (element, dataSource, opts) {
      setElement(this, element, dataSource, opts, processColumnData);
    },
    BarChart: function (element, dataSource, opts) {
      setElement(this, element, dataSource, opts, processBarData);
    },
    charts: {}
  };

  window.Chartkick = Chartkick;
}(window));
