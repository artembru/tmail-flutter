// Generated by dart2js (NullSafetyMode.sound, trust primitives, omit checks, lax runtime type, csp, deferred-serialization, intern-composite-values), the Dart to JavaScript compiler version: 3.0.6.
self.$__dart_deferred_initializers__ = self.$__dart_deferred_initializers__ || Object.create(null);
$__dart_deferred_initializers__.current = function(hunkHelpers, init, holdersList, $) {
  var C = {
    ContactView$() {
      return new C.ContactView(null);
    },
    ContactView: function ContactView(t0) {
      this.key = t0;
    },
    ContactView_build_closure1: function ContactView_build_closure1(t0) {
      this.context = t0;
    },
    ContactView_build_closure: function ContactView_build_closure(t0, t1) {
      this.$this = t0;
      this.context = t1;
    },
    ContactView_build_closure0: function ContactView_build_closure0(t0) {
      this.$this = t0;
    },
    ContactView_build__closure0: function ContactView_build__closure0(t0) {
      this.$this = t0;
    },
    ContactView_build__closure: function ContactView_build__closure(t0) {
      this.$this = t0;
    },
    ContactView_build___closure: function ContactView_build___closure(t0, t1) {
      this.$this = t0;
      this.context = t1;
    },
    AppBarContactWidget: function AppBarContactWidget(t0, t1, t2) {
      this._app_bar_contact_widget$_imagePaths = t0;
      this.onCloseContactView = t1;
      this.key = t2;
    },
    ContactUtils_supportAppBarTopBorder(context, responsiveUtils) {
      return false;
    },
    ContactUtils_getRadiusBorderAppBarTop(context, responsiveUtils) {
      C.ContactUtils_supportAppBarTopBorder(context, responsiveUtils);
      return 0;
    }
  },
  A, B, D, F, E, J, G;
  C = hunkHelpers.updateHolder(holdersList[7], C);
  A = holdersList[0];
  B = holdersList[2];
  D = holdersList[11];
  F = holdersList[12];
  E = holdersList[10];
  J = holdersList[1];
  G = holdersList[8];
  C.ContactView.prototype = {
    build$1(context) {
      var t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, t15, _this = this, _null = null,
        t1 = $.$get$GetWidget__cache();
      A.Expando__checkType(_this);
      t1 = t1._jsWeakMap;
      t2 = A._instanceType(_this)._eval$1("GetWidget.S");
      C.ContactUtils_supportAppBarTopBorder(context, t2._as(t1.get(_this)).responsiveUtils);
      A.Expando__checkType(_this);
      t3 = C.ContactUtils_getRadiusBorderAppBarTop(context, t2._as(t1.get(_this)).responsiveUtils);
      A.Expando__checkType(_this);
      t4 = C.ContactUtils_getRadiusBorderAppBarTop(context, t2._as(t1.get(_this)).responsiveUtils);
      A.Expando__checkType(_this);
      t5 = C.ContactUtils_getRadiusBorderAppBarTop(context, t2._as(t1.get(_this)).responsiveUtils);
      A.Expando__checkType(_this);
      t6 = C.ContactUtils_getRadiusBorderAppBarTop(context, t2._as(t1.get(_this)).responsiveUtils);
      A.Expando__checkType(_this);
      t2._as(t1.get(_this)).toString;
      $.$get$Get();
      t7 = $.GetInstance__getInstance;
      if (t7 == null)
        t7 = $.GetInstance__getInstance = B.C_GetInstance;
      t7 = A.Container$(_null, new C.AppBarContactWidget(t7.find$1$1$tag(0, _null, type$.ImagePaths), new C.ContactView_build_closure(_this, context), _null), B.Clip_0, B.Color_4294967295, _null, _null, _null, 52, _null, _null, B.EdgeInsets_16_0_16_0, _null, _null, _null);
      A.Expando__checkType(_this);
      t8 = t2._as(t1.get(_this)).imagePaths;
      A.Expando__checkType(_this);
      t9 = t2._as(t1.get(_this)).searchQuery;
      t9 = t9.get$value(t9);
      A.Expando__checkType(_this);
      t10 = t2._as(t1.get(_this)).textInputSearchFocus;
      A.Expando__checkType(_this);
      t11 = t2._as(t1.get(_this)).textInputSearchController;
      A.Expando__checkType(_this);
      t2._as(t1.get(_this)).toString;
      A.Expando__checkType(_this);
      t2._as(t1.get(_this)).toString;
      t12 = A.SvgPicture$asset("assets/images/ic_clear_text_search.svg", B.Alignment_0_0, _null, B.BoxFit_0, 18, _null, 18);
      A.Localizations_of(context, B.Type_AppLocalizations_swi, type$.AppLocalizations).toString;
      t13 = A.Intl__message("Enter name or email", _null, "hintSearchInputContact", _null, _null);
      A.Expando__checkType(_this);
      t14 = t2._as(t1.get(_this)).get$clearAllTextInputSearchForm();
      A.Expando__checkType(_this);
      t15 = t2._as(t1.get(_this)).get$onTextSearchChange();
      A.Expando__checkType(_this);
      return A.Scaffold$(_null, B.Color_1627389952, A.GestureDetector$(_null, A.SafeArea$(false, A.Container$(_null, A.ClipRRect$(new A.BorderRadius(new A.Radius(t5, t5), new A.Radius(t6, t6), B.Radius_0_0, B.Radius_0_0), A.SafeArea$(true, A.Container$(_null, A.Column$(A._setArrayType([t7, D.Divider_6xV, A.SearchAppBarWidget$(B.BoxDecoration_Oi2, false, true, 44, t13, t12, t8, F.EdgeInsets_16_10_16_10, t14, t2._as(t1.get(_this)).get$onSearchTextAction(), t15, B.EdgeInsets_0_0_0_0, t10, t11, t9), A.Expanded$(new A.Obx(new C.ContactView_build_closure0(_this), _null), 1)], type$.JSArray_Widget), B.CrossAxisAlignment_2, B.MainAxisAlignment_0, B.MainAxisSize_1, B.VerticalDirection_1), B.Clip_0, B.Color_4294967295, _null, _null, _null, _null, _null, _null, _null, _null, _null, _null), true, B.EdgeInsets_0_0_0_0, true, true), B.Clip_2), B.Clip_0, _null, _null, new A.BoxDecoration(B.Color_4294967295, _null, _null, new A.BorderRadius(new A.Radius(t3, t3), new A.Radius(t4, t4), B.Radius_0_0, B.Radius_0_0), _null, _null, _null, B.BoxShape_0), _null, _null, _null, _null, _null, _null, _null, _null), false, B.EdgeInsets_0_0_0_0, false, false), B.DragStartBehavior_1, false, _null, _null, _null, _null, _null, _null, _null, _null, _null, _null, _null, _null, _null, _null, _null, _null, _null, new C.ContactView_build_closure1(context), _null, _null, _null, _null, _null, _null, _null), _null, _null, true, _null, _null, _null);
    },
    _toSuggestionEmailAddress$2(item, addedEmailAddresses) {
      if (B.JSArray_methods.contains$1(addedEmailAddresses, item))
        return new E.SuggestionEmailAddress(item, D.SuggestionEmailState_1);
      else
        return new E.SuggestionEmailAddress(item, D.SuggestionEmailState_0);
    }
  };
  C.AppBarContactWidget.prototype = {
    build$1(context) {
      var _null = null,
        t1 = A.SvgPicture$asset("assets/images/ic_close.svg", B.Alignment_0_0, A.ColorNullableExtension_asFilter(B.Color_4286680217), B.BoxFit_0, 24, _null, 24),
        t2 = type$.AppLocalizations;
      A.Localizations_of(context, B.Type_AppLocalizations_swi, t2).toString;
      t1 = A.Positioned$(_null, A.buildIconWeb(_null, _null, t1, B.EdgeInsets_5_5_5_5, 25, 25, this.onCloseContactView, 15, A.Intl__message("Close", _null, "close", _null, _null)), _null, _null, 0, _null, _null, _null);
      A.Localizations_of(context, B.Type_AppLocalizations_swi, t2).toString;
      return new A.Stack(B.Alignment_0_0, _null, B.StackFit_0, B.Clip_1, A._setArrayType([t1, A.Center$(A.Text$(A.Intl__message("Contact", _null, "contact", _null, _null), _null, _null, _null, _null, _null, _null, _null, _null, B.TextStyle_oHY, _null, _null, _null, _null, _null), _null, _null)], type$.JSArray_Widget), _null);
    }
  };
  var typesOffset = hunkHelpers.updateTypes(["ContactSuggestionBoxItem(BuildContext,int)"]);
  C.ContactView_build_closure1.prototype = {
    call$0() {
      return A.FocusScope_of(this.context).unfocus$0();
    },
    $signature: 0
  };
  C.ContactView_build_closure.prototype = {
    call$0() {
      var t1 = this.$this,
        t2 = $.$get$GetWidget__cache();
      A.Expando__checkType(t1);
      A._instanceType(t1)._eval$1("GetWidget.S")._as(t2._jsWeakMap.get(t1)).clearAllTextInputSearchForm$0();
      A.FocusScope_of(this.context).unfocus$0();
      A.GetNavigation_back($.$get$Get(), null);
      return null;
    },
    $signature: 0
  };
  C.ContactView_build_closure0.prototype = {
    call$0() {
      var t3, t4, t5, _null = null,
        t1 = this.$this,
        t2 = $.$get$GetWidget__cache();
      A.Expando__checkType(t1);
      t2 = t2._jsWeakMap;
      t3 = A._instanceType(t1)._eval$1("GetWidget.S");
      t4 = t3._as(t2.get(t1)).listContactSearched;
      if (!t4.get$isEmpty(t4)) {
        A.Expando__checkType(t1);
        t4 = t3._as(t2.get(t1)).scrollListViewController;
        A.Expando__checkType(t1);
        t5 = t3._as(t2.get(t1)).listContactSearched;
        t5 = J.get$length$asx(t5.get$value(t5));
        A.Expando__checkType(t1);
        return A.Container$(_null, new A.ScrollbarListView(A.ListView$separated(t3._as(t2.get(t1)).scrollListViewController, new C.ContactView_build__closure(t1), t5, B.ScrollViewKeyboardDismissBehavior_0, _null, _null, _null, false, B.Axis_1, new C.ContactView_build__closure0(t1), false), t4, _null, _null), B.Clip_0, B.Color_4294967295, _null, _null, _null, _null, _null, _null, B.EdgeInsets_4_0_4_0, _null, _null, _null);
      } else
        return B.SizedBox_0_0_null_null;
    },
    $signature: 4
  };
  C.ContactView_build__closure0.prototype = {
    call$2(context, index) {
      var t1 = this.$this,
        t2 = $.$get$GetWidget__cache();
      A.Expando__checkType(t1);
      A._instanceType(t1)._eval$1("GetWidget.S")._as(t2._jsWeakMap.get(t1)).toString;
      return new A.Padding(B.EdgeInsets_16_0_16_0, B.Divider_I9g, null);
    },
    $signature: 195
  };
  C.ContactView_build__closure.prototype = {
    call$2(context, index) {
      var t3, t4, emailAddress, t5, suggestionEmailAddress,
        t1 = this.$this,
        t2 = $.$get$GetWidget__cache();
      A.Expando__checkType(t1);
      t2 = t2._jsWeakMap;
      t3 = A._instanceType(t1)._eval$1("GetWidget.S");
      t4 = t3._as(t2.get(t1)).listContactSearched;
      emailAddress = J.$index$asx(t4.get$value(t4), index);
      A.Expando__checkType(t1);
      t4 = type$.JSArray_EmailAddress;
      if (t3._as(t2.get(t1)).contactSelected != null) {
        A.Expando__checkType(t1);
        t5 = t3._as(t2.get(t1)).contactSelected;
        t5.toString;
        t4 = A._setArrayType([t5], t4);
      } else
        t4 = A._setArrayType([], t4);
      suggestionEmailAddress = t1._toSuggestionEmailAddress$2(emailAddress, t4);
      A.Expando__checkType(t1);
      t3._as(t2.get(t1)).toString;
      return new G.ContactSuggestionBoxItem(suggestionEmailAddress, new C.ContactView_build___closure(t1, context), F.EdgeInsets_16_10_16_10, null, null);
    },
    $signature: typesOffset + 0
  };
  C.ContactView_build___closure.prototype = {
    call$1(contact) {
      var t1 = this.$this,
        t2 = $.$get$GetWidget__cache();
      A.Expando__checkType(t1);
      A._instanceType(t1)._eval$1("GetWidget.S")._as(t2._jsWeakMap.get(t1));
      A.FocusScope_of(this.context).unfocus$0();
      A.GetNavigation_back($.$get$Get(), contact);
      return null;
    },
    $signature: 68
  };
  (function inheritance() {
    var _inherit = hunkHelpers.inherit,
      _inheritMany = hunkHelpers.inheritMany;
    _inherit(C.ContactView, A.GetWidget);
    _inheritMany(A.Closure0Args, [C.ContactView_build_closure1, C.ContactView_build_closure, C.ContactView_build_closure0]);
    _inheritMany(A.Closure2Args, [C.ContactView_build__closure0, C.ContactView_build__closure]);
    _inherit(C.ContactView_build___closure, A.Closure);
    _inherit(C.AppBarContactWidget, A.StatelessWidget);
  })();
  A._Universe_addRules(init.typeUniverse, JSON.parse('{"ContactView":{"GetWidget":["ContactController"],"Widget":[],"DiagnosticableTree":[],"GetWidget.S":"ContactController"},"AppBarContactWidget":{"StatelessWidget":[],"Widget":[],"DiagnosticableTree":[]}}'));
  var type$ = {
    AppLocalizations: A.findType("AppLocalizations"),
    ImagePaths: A.findType("ImagePaths"),
    JSArray_EmailAddress: A.findType("JSArray<EmailAddress>"),
    JSArray_Widget: A.findType("JSArray<Widget>")
  };
};

$__dart_deferred_initializers__["aQ51w4y3nJDaSI0s1K67fuQXC1k="] = $__dart_deferred_initializers__.current
