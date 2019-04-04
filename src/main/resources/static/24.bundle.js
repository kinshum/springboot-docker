webpackJsonp([24],{

/***/ 1143:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
exports.default = {
    style: {
        ListTop: {
            margin: 10
        },
        ListSearchTable: {
            backgroundColor: "#fafaf7",
            paddingTop: 10,
            marginBottom: 10
        },
        ListAddBtn: {
            marginBottom: 10,
            width: 100
        },
        ListTable: {
            backgroundColor: "#fafaf7",
            padding: "10px 20px"
        },
        ListTableTopRow: {
            lineHeight: "35px",
            backgroundColor: "#f1f1f2",
            textAlign: "center",
            color: "#333"
            //margin: "0 30px"
        },
        FormStyle: {
            backgroundColor: "#fafaf7",
            padding: "10px 20px 30px 20px",
            position: "relative",
            marginBottom: 10
        },
        hFormStyle: {
            backgroundColor: "#fafaf7",
            textAlign: "center",
            fontSize: "18px",
            lineHeight: "36px",
            color: "rgb(80,172,226)",
            position: "absolute",
            top: 10,
            left: "44%"
        },
        EmptyRow: {
            height: "100px"
        },
        ManagerBottomRow: {
            height: "60px",
            backgroundColor: "#fafaf7",
            position: "fixed",
            bottom: "0px",
            width: "100%",
            boxShadow: "0px -5px 5px #E1E0DE"
        },
        SubmitBtn: {
            width: 100,
            marginRight: "15px",
            float: "right",
            marginTop: "15px"
        },
        CancelBtn: {
            width: 100,
            float: "left",
            marginTop: "15px",
            marginLeft: "15px"
        },
        DetailContent: {
            marginTop: 10
        },
        DetailRow: {
            lineHeight: "30px"
        },
        Pagination: {
            textAlign: "right",
            margin: 20
        }
    }
};

/***/ }),

/***/ 1372:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});
exports.default = undefined;

var _row = __webpack_require__(941);

var _row2 = _interopRequireDefault(_row);

var _col = __webpack_require__(944);

var _col2 = _interopRequireDefault(_col);

var _button = __webpack_require__(966);

var _button2 = _interopRequireDefault(_button);

var _breadcrumb = __webpack_require__(949);

var _breadcrumb2 = _interopRequireDefault(_breadcrumb);

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _class;

__webpack_require__(942);

__webpack_require__(945);

__webpack_require__(967);

__webpack_require__(950);

var _react = __webpack_require__(12);

var _react2 = _interopRequireDefault(_react);

var _mobxReact = __webpack_require__(149);

var _SettlementAddInfoForm = __webpack_require__(1373);

var _SettlementAddInfoForm2 = _interopRequireDefault(_SettlementAddInfoForm);

var _SettlementStyle = __webpack_require__(1143);

var _SettlementStyle2 = _interopRequireDefault(_SettlementStyle);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

var SettlementAddContainer = (0, _mobxReact.observer)(_class = function (_Component) {
    _inherits(SettlementAddContainer, _Component);

    function SettlementAddContainer(props) {
        _classCallCheck(this, SettlementAddContainer);

        var _this = _possibleConstructorReturn(this, (SettlementAddContainer.__proto__ || Object.getPrototypeOf(SettlementAddContainer)).call(this, props));

        props.store.selectCountry({ pid: 0 });
        return _this;
    }

    _createClass(SettlementAddContainer, [{
        key: 'getInfoForm',
        value: function getInfoForm(form) {
            this.InfoForm = form;
        }
    }, {
        key: 'handleSubmit',
        value: function handleSubmit() {
            var _this2 = this;

            this.InfoForm.validateFields(function (err, data) {
                if (!err) {
                    _this2.InfoFormDataRow = data;
                    _this2.props.store.SettlementAdd(_this2.InfoFormDataRow);
                }
            });
        }
    }, {
        key: 'render',
        value: function render() {
            var style = _SettlementStyle2.default.style;

            return _react2.default.createElement(
                'div',
                null,
                _react2.default.createElement(
                    _breadcrumb2.default,
                    { separator: '>', className: 'breadcrumb' },
                    _react2.default.createElement(
                        _breadcrumb2.default.Item,
                        { href: '#/Frame/myHome' },
                        '\u9996\u9875'
                    ),
                    _react2.default.createElement(
                        _breadcrumb2.default.Item,
                        { href: '#/Frame/SettlementList' },
                        '\u7ED3\u7B97\u5BF9\u8C61'
                    ),
                    _react2.default.createElement(
                        _breadcrumb2.default.Item,
                        null,
                        '\u65B0\u589E\u7ED3\u7B97\u5BF9\u8C61'
                    )
                ),
                _react2.default.createElement(_SettlementAddInfoForm2.default, {
                    InfoForm: this.getInfoForm.bind(this),
                    country: this.props.store.countryDataTable
                    /*SettlementOnlyOne = {this.props.store.SettlementOnlyOne.bind(this)}*/
                    , SettlementOnlyOneName: this.props.store.SettlementOnlyOneName.bind(this)
                }),
                _react2.default.createElement(
                    _row2.default,
                    { style: style.ManagerBottomRow },
                    _react2.default.createElement(
                        _col2.default,
                        { span: 10 },
                        _react2.default.createElement(
                            _button2.default,
                            { type: 'primary', style: style.SubmitBtn, onClick: this.handleSubmit.bind(this) },
                            '\u4FDD\u5B58'
                        )
                    ),
                    _react2.default.createElement(
                        _col2.default,
                        { span: 14 },
                        _react2.default.createElement(
                            _button2.default,
                            { type: 'default', style: style.CancelBtn, onClick: function onClick() {
                                    window.location.hash = "Frame/SettlementList";
                                } },
                            '\u8FD4\u56DE'
                        )
                    )
                )
            );
        }
    }]);

    return SettlementAddContainer;
}(_react.Component)) || _class;

exports.default = SettlementAddContainer;

/***/ }),

/***/ 1373:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _row = __webpack_require__(941);

var _row2 = _interopRequireDefault(_row);

var _col = __webpack_require__(944);

var _col2 = _interopRequireDefault(_col);

var _input = __webpack_require__(963);

var _input2 = _interopRequireDefault(_input);

var _icon = __webpack_require__(455);

var _icon2 = _interopRequireDefault(_icon);

var _form = __webpack_require__(955);

var _form2 = _interopRequireDefault(_form);

var _select = __webpack_require__(953);

var _select2 = _interopRequireDefault(_select);

var _extends = Object.assign || function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key]; } } } return target; };

var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

var _class;

__webpack_require__(942);

__webpack_require__(945);

__webpack_require__(938);

__webpack_require__(1045);

__webpack_require__(956);

__webpack_require__(969);

var _react = __webpack_require__(12);

var _react2 = _interopRequireDefault(_react);

var _mobxReact = __webpack_require__(149);

var _SettlementStyle = __webpack_require__(1143);

var _SettlementStyle2 = _interopRequireDefault(_SettlementStyle);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

function _possibleConstructorReturn(self, call) { if (!self) { throw new ReferenceError("this hasn't been initialised - super() hasn't been called"); } return call && (typeof call === "object" || typeof call === "function") ? call : self; }

function _inherits(subClass, superClass) { if (typeof superClass !== "function" && superClass !== null) { throw new TypeError("Super expression must either be null or a function, not " + typeof superClass); } subClass.prototype = Object.create(superClass && superClass.prototype, { constructor: { value: subClass, enumerable: false, writable: true, configurable: true } }); if (superClass) Object.setPrototypeOf ? Object.setPrototypeOf(subClass, superClass) : subClass.__proto__ = superClass; }

var Option = _select2.default.Option;
var FormItem = _form2.default.Item;

var SettlementComponent = (0, _mobxReact.observer)(_class = function (_Component) {
    _inherits(SettlementComponent, _Component);

    function SettlementComponent(props) {
        _classCallCheck(this, SettlementComponent);

        var _this = _possibleConstructorReturn(this, (SettlementComponent.__proto__ || Object.getPrototypeOf(SettlementComponent)).call(this, props));

        _this.handleSettlementOnlyOneName = function (rule, value, callback) {
            if (!value) {
                callback();
            } else {
                _this.props.SettlementOnlyOneName(value, callback);
            }
        };

        props.InfoForm(props.form);
        return _this;
    }
    /*handleSettlementOnlyOne = (rule, value, callback)=>{
        if(!value){
            callback();
        }else{
            this.props.SettlementOnlyOne(value,callback);
        }
    };*/


    _createClass(SettlementComponent, [{
        key: "render",
        value: function render() {
            var style = _SettlementStyle2.default.style;
            var getFieldDecorator = this.props.form.getFieldDecorator;

            var formItemLayout = {
                labelCol: {
                    xs: { span: 24 },
                    sm: { span: 7 }
                },
                wrapperCol: {
                    xs: { span: 24 },
                    sm: { span: 16 }
                }
            };
            return _react2.default.createElement(
                "div",
                null,
                _react2.default.createElement(
                    _form2.default,
                    { style: style.FormStyle },
                    _react2.default.createElement("div", { style: { height: 20, borderBottom: "1px solid #ccc" } }),
                    _react2.default.createElement(
                        "p",
                        { style: style.hFormStyle },
                        "\xA0\xA0",
                        _react2.default.createElement(_icon2.default, { type: "book" }),
                        " \u65B0\u589E\u7ED3\u7B97\u5BF9\u8C61\xA0\xA0"
                    ),
                    _react2.default.createElement(
                        _row2.default,
                        { style: { marginTop: 30 } },
                        _react2.default.createElement(
                            _col2.default,
                            { span: "8" },
                            _react2.default.createElement(
                                FormItem,
                                _extends({}, formItemLayout, { label: "\u7ED3\u7B97\u5BF9\u8C61\u4E2D\u6587\u540D" }),
                                getFieldDecorator('orgCname', {
                                    rules: [{ required: true, message: '请填写结算对象中文名！' }, { max: 50, message: '结算对象中文名过长！' }]
                                })(_react2.default.createElement(_input2.default, null))
                            )
                        ),
                        _react2.default.createElement(
                            _col2.default,
                            { span: "8" },
                            _react2.default.createElement(
                                FormItem,
                                _extends({}, formItemLayout, { label: "\u7ED3\u7B97\u5BF9\u8C61\u82F1\u6587\u540D" }),
                                getFieldDecorator('orgEname', {
                                    rules: [{ required: true, message: '请填写结算对象英文名！' }, { max: 100, message: '结算对象中文名过长！' }]
                                })(_react2.default.createElement(_input2.default, null))
                            )
                        ),
                        _react2.default.createElement(
                            _col2.default,
                            { span: "8" },
                            _react2.default.createElement(
                                FormItem,
                                _extends({}, formItemLayout, { label: "\u7ED3\u7B97\u65B9\u5F0F" }),
                                getFieldDecorator('settleType', {
                                    rules: [{ required: true, message: '请填写结算方式！' }]
                                })(_react2.default.createElement(
                                    _select2.default,
                                    null,
                                    _react2.default.createElement(
                                        Option,
                                        { value: "0" },
                                        "\u73B0\u7ED3"
                                    ),
                                    _react2.default.createElement(
                                        Option,
                                        { value: "1" },
                                        "\u6708\u7ED3"
                                    )
                                ))
                            )
                        )
                    ),
                    _react2.default.createElement(
                        _row2.default,
                        null,
                        _react2.default.createElement(
                            _col2.default,
                            { span: "8" },
                            _react2.default.createElement(
                                FormItem,
                                _extends({}, formItemLayout, { label: "\u7B80\u79F0" }),
                                getFieldDecorator('orgShortname', {
                                    rules: [{ required: true, message: '结算对象简称不能为空' }, { max: 20, message: '结算对象简称过长！' }, { validator: this.handleSettlementOnlyOneName.bind(this) }]
                                })(_react2.default.createElement(_input2.default, null))
                            )
                        ),
                        _react2.default.createElement(
                            _col2.default,
                            { span: "8" },
                            _react2.default.createElement(
                                FormItem,
                                _extends({}, formItemLayout, { label: "\u6240\u5728\u56FD" }),
                                getFieldDecorator('country', {})(_react2.default.createElement(
                                    _select2.default,
                                    {
                                        showSearch: true,
                                        filterOption: function filterOption(input, option) {
                                            return option.props.children.toLowerCase().indexOf(input.toLowerCase()) >= 0;
                                        } },
                                    this.props.country.map(function (item, index) {
                                        return _react2.default.createElement(
                                            Option,
                                            { key: index, value: item.countryName },
                                            item.countryName
                                        );
                                    })
                                ))
                            )
                        ),
                        _react2.default.createElement(
                            _col2.default,
                            { span: "8" },
                            _react2.default.createElement(
                                FormItem,
                                _extends({}, formItemLayout, { label: "\u7ED3\u7B97\u5E01\u79CD" }),
                                getFieldDecorator('currency', {
                                    rules: [{ required: true, message: '请填写结算币种！' }]
                                })(_react2.default.createElement(
                                    _select2.default,
                                    null,
                                    _react2.default.createElement(
                                        Option,
                                        { value: "AUD" },
                                        "AUD"
                                    ),
                                    _react2.default.createElement(
                                        Option,
                                        { value: "CNY" },
                                        "CNY"
                                    ),
                                    _react2.default.createElement(
                                        Option,
                                        { value: "EUR" },
                                        "EUR"
                                    ),
                                    _react2.default.createElement(
                                        Option,
                                        { value: "GBP" },
                                        "GBP"
                                    ),
                                    _react2.default.createElement(
                                        Option,
                                        { value: "HKD" },
                                        "HKD"
                                    ),
                                    _react2.default.createElement(
                                        Option,
                                        { value: "JPY" },
                                        "JPY"
                                    ),
                                    _react2.default.createElement(
                                        Option,
                                        { value: "USD" },
                                        "USD"
                                    )
                                ))
                            )
                        )
                    ),
                    _react2.default.createElement(
                        _row2.default,
                        null,
                        _react2.default.createElement(
                            _col2.default,
                            { span: "8" },
                            _react2.default.createElement(
                                FormItem,
                                _extends({}, formItemLayout, { label: "\u516C\u53F8\u5730\u5740" }),
                                getFieldDecorator('address', {
                                    rules: [{ required: true, message: '请填写公司地址！' }, { max: 100, message: '公司地址过长！' }]
                                })(_react2.default.createElement(_input2.default, null))
                            )
                        ),
                        _react2.default.createElement(
                            _col2.default,
                            { span: "8" },
                            _react2.default.createElement(
                                FormItem,
                                _extends({}, formItemLayout, { label: "\u8054\u7CFB\u4EBA" }),
                                getFieldDecorator('contactPerson', {
                                    rules: [{ required: true, message: '请填写联系人！' }, { max: 20, message: '联系人过长！' }]
                                })(_react2.default.createElement(_input2.default, null))
                            )
                        ),
                        _react2.default.createElement(
                            _col2.default,
                            { span: "8" },
                            _react2.default.createElement(
                                FormItem,
                                _extends({}, formItemLayout, { label: "\u8054\u7CFB\u4EBA\u7535\u8BDD" }),
                                getFieldDecorator('contactPhone', {
                                    rules: [{ required: true, message: '请填写联系人电话！' }, { max: 20, message: '联系人电话过长！' }]
                                })(_react2.default.createElement(_input2.default, null))
                            )
                        )
                    ),
                    _react2.default.createElement(
                        _row2.default,
                        null,
                        _react2.default.createElement(
                            _col2.default,
                            { span: "8" },
                            _react2.default.createElement(
                                FormItem,
                                _extends({}, formItemLayout, { label: "\u5F00\u6237\u94F6\u884C" }),
                                getFieldDecorator('bankName', {
                                    rules: [
                                    //{ required: true, message: '请填写开户银行！'},
                                    { max: 20, message: '开户银行过长！' }]
                                })(_react2.default.createElement(_input2.default, null))
                            )
                        ),
                        _react2.default.createElement(
                            _col2.default,
                            { span: "8" },
                            _react2.default.createElement(
                                FormItem,
                                _extends({}, formItemLayout, { label: "\u94F6\u884C\u5361\u53F7" }),
                                getFieldDecorator('bankAccount', {
                                    rules: [
                                    //{ required: true, message: '请填写银行卡号！'},
                                    { max: 20, message: '银行卡号过长！' }]
                                })(_react2.default.createElement(_input2.default, null))
                            )
                        ),
                        _react2.default.createElement(
                            _col2.default,
                            { span: "8" },
                            _react2.default.createElement(
                                FormItem,
                                _extends({}, formItemLayout, { label: "\u5F00\u6237\u884C\u5730\u5740" }),
                                getFieldDecorator('bankAddress', {
                                    rules: [
                                    //{ required: true, message: '请填写开户行地址！'},
                                    { max: 100, message: '开户行地址过长！' }]
                                })(_react2.default.createElement(_input2.default, null))
                            )
                        )
                    )
                )
            );
        }
    }]);

    return SettlementComponent;
}(_react.Component)) || _class;

var SettlementAddInfoForm = _form2.default.create()(SettlementComponent);

exports.default = SettlementAddInfoForm;

/***/ }),

/***/ 935:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _extends2 = __webpack_require__(90);

var _extends3 = _interopRequireDefault(_extends2);

var _classCallCheck2 = __webpack_require__(110);

var _classCallCheck3 = _interopRequireDefault(_classCallCheck2);

var _createClass2 = __webpack_require__(113);

var _createClass3 = _interopRequireDefault(_createClass2);

var _possibleConstructorReturn2 = __webpack_require__(112);

var _possibleConstructorReturn3 = _interopRequireDefault(_possibleConstructorReturn2);

var _inherits2 = __webpack_require__(111);

var _inherits3 = _interopRequireDefault(_inherits2);

var _react = __webpack_require__(12);

var _react2 = _interopRequireDefault(_react);

var _propTypes = __webpack_require__(22);

var _propTypes2 = _interopRequireDefault(_propTypes);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

var __rest = undefined && undefined.__rest || function (s, e) {
    var t = {};
    for (var p in s) {
        if (Object.prototype.hasOwnProperty.call(s, p) && e.indexOf(p) < 0) t[p] = s[p];
    }if (s != null && typeof Object.getOwnPropertySymbols === "function") for (var i = 0, p = Object.getOwnPropertySymbols(s); i < p.length; i++) {
        if (e.indexOf(p[i]) < 0) t[p[i]] = s[p[i]];
    }return t;
};

var BreadcrumbItem = function (_React$Component) {
    (0, _inherits3['default'])(BreadcrumbItem, _React$Component);

    function BreadcrumbItem() {
        (0, _classCallCheck3['default'])(this, BreadcrumbItem);
        return (0, _possibleConstructorReturn3['default'])(this, (BreadcrumbItem.__proto__ || Object.getPrototypeOf(BreadcrumbItem)).apply(this, arguments));
    }

    (0, _createClass3['default'])(BreadcrumbItem, [{
        key: 'render',
        value: function render() {
            var _a = this.props,
                prefixCls = _a.prefixCls,
                separator = _a.separator,
                children = _a.children,
                restProps = __rest(_a, ["prefixCls", "separator", "children"]);
            var link = void 0;
            if ('href' in this.props) {
                link = _react2['default'].createElement(
                    'a',
                    (0, _extends3['default'])({ className: prefixCls + '-link' }, restProps),
                    children
                );
            } else {
                link = _react2['default'].createElement(
                    'span',
                    (0, _extends3['default'])({ className: prefixCls + '-link' }, restProps),
                    children
                );
            }
            if (children) {
                return _react2['default'].createElement(
                    'span',
                    null,
                    link,
                    _react2['default'].createElement(
                        'span',
                        { className: prefixCls + '-separator' },
                        separator
                    )
                );
            }
            return null;
        }
    }]);
    return BreadcrumbItem;
}(_react2['default'].Component);

exports['default'] = BreadcrumbItem;

BreadcrumbItem.__ANT_BREADCRUMB_ITEM = true;
BreadcrumbItem.defaultProps = {
    prefixCls: 'ant-breadcrumb',
    separator: '/'
};
BreadcrumbItem.propTypes = {
    prefixCls: _propTypes2['default'].string,
    separator: _propTypes2['default'].oneOfType([_propTypes2['default'].string, _propTypes2['default'].element]),
    href: _propTypes2['default'].string
};
module.exports = exports['default'];

/***/ }),

/***/ 948:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
    value: true
});

var _classCallCheck2 = __webpack_require__(110);

var _classCallCheck3 = _interopRequireDefault(_classCallCheck2);

var _createClass2 = __webpack_require__(113);

var _createClass3 = _interopRequireDefault(_createClass2);

var _possibleConstructorReturn2 = __webpack_require__(112);

var _possibleConstructorReturn3 = _interopRequireDefault(_possibleConstructorReturn2);

var _inherits2 = __webpack_require__(111);

var _inherits3 = _interopRequireDefault(_inherits2);

var _react = __webpack_require__(12);

var _react2 = _interopRequireDefault(_react);

var _propTypes = __webpack_require__(22);

var _propTypes2 = _interopRequireDefault(_propTypes);

var _warning = __webpack_require__(937);

var _warning2 = _interopRequireDefault(_warning);

var _BreadcrumbItem = __webpack_require__(935);

var _BreadcrumbItem2 = _interopRequireDefault(_BreadcrumbItem);

var _classnames = __webpack_require__(146);

var _classnames2 = _interopRequireDefault(_classnames);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

function getBreadcrumbName(route, params) {
    if (!route.breadcrumbName) {
        return null;
    }
    var paramsKeys = Object.keys(params).join('|');
    var name = route.breadcrumbName.replace(new RegExp(':(' + paramsKeys + ')', 'g'), function (replacement, key) {
        return params[key] || replacement;
    });
    return name;
}
function defaultItemRender(route, params, routes, paths) {
    var isLastItem = routes.indexOf(route) === routes.length - 1;
    var name = getBreadcrumbName(route, params);
    return isLastItem ? _react2['default'].createElement(
        'span',
        null,
        name
    ) : _react2['default'].createElement(
        'a',
        { href: '#/' + paths.join('/') },
        name
    );
}

var Breadcrumb = function (_React$Component) {
    (0, _inherits3['default'])(Breadcrumb, _React$Component);

    function Breadcrumb() {
        (0, _classCallCheck3['default'])(this, Breadcrumb);
        return (0, _possibleConstructorReturn3['default'])(this, (Breadcrumb.__proto__ || Object.getPrototypeOf(Breadcrumb)).apply(this, arguments));
    }

    (0, _createClass3['default'])(Breadcrumb, [{
        key: 'componentDidMount',
        value: function componentDidMount() {
            var props = this.props;
            (0, _warning2['default'])(!('linkRender' in props || 'nameRender' in props), '`linkRender` and `nameRender` are removed, please use `itemRender` instead, ' + 'see: https://u.ant.design/item-render.');
        }
    }, {
        key: 'render',
        value: function render() {
            var crumbs = void 0;
            var _props = this.props,
                separator = _props.separator,
                prefixCls = _props.prefixCls,
                style = _props.style,
                className = _props.className,
                routes = _props.routes,
                _props$params = _props.params,
                params = _props$params === undefined ? {} : _props$params,
                children = _props.children,
                _props$itemRender = _props.itemRender,
                itemRender = _props$itemRender === undefined ? defaultItemRender : _props$itemRender;

            if (routes && routes.length > 0) {
                var paths = [];
                crumbs = routes.map(function (route) {
                    route.path = route.path || '';
                    var path = route.path.replace(/^\//, '');
                    Object.keys(params).forEach(function (key) {
                        path = path.replace(':' + key, params[key]);
                    });
                    if (path) {
                        paths.push(path);
                    }
                    return _react2['default'].createElement(
                        _BreadcrumbItem2['default'],
                        { separator: separator, key: route.breadcrumbName || path },
                        itemRender(route, params, routes, paths)
                    );
                });
            } else if (children) {
                crumbs = _react2['default'].Children.map(children, function (element, index) {
                    if (!element) {
                        return element;
                    }
                    (0, _warning2['default'])(element.type && element.type.__ANT_BREADCRUMB_ITEM, 'Breadcrumb only accepts Breadcrumb.Item as it\'s children');
                    return (0, _react.cloneElement)(element, {
                        separator: separator,
                        key: index
                    });
                });
            }
            return _react2['default'].createElement(
                'div',
                { className: (0, _classnames2['default'])(className, prefixCls), style: style },
                crumbs
            );
        }
    }]);
    return Breadcrumb;
}(_react2['default'].Component);

exports['default'] = Breadcrumb;

Breadcrumb.defaultProps = {
    prefixCls: 'ant-breadcrumb',
    separator: '/'
};
Breadcrumb.propTypes = {
    prefixCls: _propTypes2['default'].string,
    separator: _propTypes2['default'].node,
    routes: _propTypes2['default'].array,
    params: _propTypes2['default'].object,
    linkRender: _propTypes2['default'].func,
    nameRender: _propTypes2['default'].func
};
module.exports = exports['default'];

/***/ }),

/***/ 949:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


Object.defineProperty(exports, "__esModule", {
  value: true
});

var _Breadcrumb = __webpack_require__(948);

var _Breadcrumb2 = _interopRequireDefault(_Breadcrumb);

var _BreadcrumbItem = __webpack_require__(935);

var _BreadcrumbItem2 = _interopRequireDefault(_BreadcrumbItem);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { 'default': obj }; }

_Breadcrumb2['default'].Item = _BreadcrumbItem2['default'];
exports['default'] = _Breadcrumb2['default'];
module.exports = exports['default'];

/***/ }),

/***/ 950:
/***/ (function(module, exports, __webpack_require__) {

"use strict";


__webpack_require__(454);

__webpack_require__(952);

/***/ }),

/***/ 951:
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(147)(false);
// imports


// module
exports.push([module.i, "/* stylelint-disable at-rule-empty-line-before,at-rule-name-space-after,at-rule-no-unknown */\n/* stylelint-disable declaration-bang-space-before */\n/* stylelint-disable declaration-bang-space-before */\n.ant-breadcrumb {\n  color: rgba(0, 0, 0, 0.65);\n  font-size: 12px;\n}\n.ant-breadcrumb a {\n  color: rgba(0, 0, 0, 0.65);\n  transition: color .3s;\n}\n.ant-breadcrumb a:hover {\n  color: #49a9ee;\n}\n.ant-breadcrumb > span:last-child {\n  font-weight: 500;\n  color: rgba(0, 0, 0, 0.65);\n}\n.ant-breadcrumb > span:last-child .ant-breadcrumb-separator {\n  display: none;\n}\n.ant-breadcrumb-separator {\n  margin: 0 8px;\n  color: rgba(0, 0, 0, 0.3);\n}\n.ant-breadcrumb-link > .anticon + span {\n  margin-left: 4px;\n}\n", ""]);

// exports


/***/ }),

/***/ 952:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(951);
if(typeof content === 'string') content = [[module.i, content, '']];
// Prepare cssTransformation
var transform;

var options = {}
options.transform = transform
// add the styles to the DOM
var update = __webpack_require__(148)(content, options);
if(content.locals) module.exports = content.locals;
// Hot Module Replacement
if(false) {
	// When the styles change, update the <style> tags
	if(!content.locals) {
		module.hot.accept("!!../../../../css-loader/index.js!../../../../less-loader/dist/cjs.js!./index.less", function() {
			var newContent = require("!!../../../../css-loader/index.js!../../../../less-loader/dist/cjs.js!./index.less");
			if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
			update(newContent);
		});
	}
	// When the module is disposed, remove the <style> tags
	module.hot.dispose(function() { update(); });
}

/***/ })

});