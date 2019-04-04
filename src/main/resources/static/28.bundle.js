webpackJsonp([28],{

/***/ 1352:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
exports.default = undefined;

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _class;

var _react = __webpack_require__(12);

var _react2 = _interopRequireDefault(_react);

var _mobxReact = __webpack_require__(149);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

var MyHomeContainer = (0, _mobxReact.observer)(_class = function (_Component) {
    _inherits(MyHomeContainer, _Component);

    function MyHomeContainer() {
        _classCallCheck(this, MyHomeContainer);

        return _possibleConstructorReturn(this, (MyHomeContainer.__proto__ || Object.getPrototypeOf(MyHomeContainer)).apply(this, arguments));
    }

    _createClass(MyHomeContainer, [{
        key: "render",
        value: function render() {
            return _react2.default.createElement(
                "div",
                null,
                _react2.default.createElement(
                    "h1",
                    null,
                    "\u6B22\u8FCE\u6765\u5230\u6211\u7684\u9996\u9875\uFF01"
                ),
                _react2.default.createElement(
                    "h2",
                    null,
                    "Welcome To My Home!"
                )
            );
        }
    }]);

    return MyHomeContainer;
}(_react.Component)) || _class;

exports.default = MyHomeContainer;

/***/ })

});