// Generated by dart2js (NullSafetyMode.sound, trust primitives, omit checks, lax runtime type, csp, deferred-serialization, intern-composite-values), the Dart to JavaScript compiler version: 3.0.6.
self.$__dart_deferred_initializers__ = self.$__dart_deferred_initializers__ || Object.create(null);
$__dart_deferred_initializers__.current = function(hunkHelpers, init, holdersList, $) {
  var C = {ContactSuggestionBoxItem: function ContactSuggestionBoxItem(t0, t1, t2, t3, t4) {
      var _ = this;
      _.suggestionEmailAddress = t0;
      _.selectedContactCallbackAction = t1;
      _.padding = t2;
      _.shapeBorder = t3;
      _.key = t4;
    }, ContactSuggestionBoxItem_build_closure: function ContactSuggestionBoxItem_build_closure(t0) {
      this.$this = t0;
    }, GradientColorAvatarIcon: function GradientColorAvatarIcon(t0, t1, t2, t3, t4) {
      var _ = this;
      _.colors = t0;
      _.iconSize = t1;
      _.labelFontSize = t2;
      _.label = t3;
      _.key = t4;
    },
    EmailAddressExtension_get_labelAvatar(_this) {
      return B.EmailAddressExtension_asString(_this).length !== 0 ? B.EmailAddressExtension_asString(_this)[0].toUpperCase() : "";
    }
  },
  A, B, D, E, F;
  C = hunkHelpers.updateHolder(holdersList[8], C);
  A = holdersList[2];
  B = holdersList[0];
  D = holdersList[11];
  E = holdersList[15];
  F = holdersList[13];
  C.ContactSuggestionBoxItem.prototype = {
    build$1(context) {
      var t1, t2, t3, t4, t5, t6, t7, itemChild, _this = this, _null = null;
      $.$get$Get();
      t1 = $.GetInstance__getInstance;
      if (t1 == null)
        t1 = $.GetInstance__getInstance = A.C_GetInstance;
      t1.find$1$1$tag(0, _null, type$.ImagePaths);
      t1 = _this.suggestionEmailAddress;
      t2 = t1.emailAddress;
      t3 = A.List_ebS[B.EmailAddressExtension__generateIndex(t2)];
      t4 = C.EmailAddressExtension_get_labelAvatar(t2);
      t5 = type$.JSArray_Widget;
      t6 = B._setArrayType([B.Text$(B.EmailAddressExtension_asString(t2), _null, _null, 1, A.TextOverflow_1, _null, _null, false, _null, A.TextStyle_oHY0, _null, _null, _null, _null, _null)], t5);
      t7 = t2.name;
      if ((t7 == null ? "" : t7).length !== 0) {
        t2 = t2.email;
        t6.push(new B.Padding(D.EdgeInsets_0_2_0_0, B.Text$(t2 == null ? "" : t2, _null, _null, 1, A.TextOverflow_1, _null, _null, false, _null, A.TextStyle_chs, _null, _null, _null, _null, _null), _null));
      }
      t2 = B._setArrayType([new C.GradientColorAvatarIcon(t3, 40, 24, t4, _null), A.SizedBox_12_null_null_null, B.Expanded$(B.Column$(t6, A.CrossAxisAlignment_0, A.MainAxisAlignment_0, A.MainAxisSize_0, A.VerticalDirection_1), 1)], t5);
      t1 = t1.state;
      if (t1 === D.SuggestionEmailState_1)
        t2.push(new B.Padding(E.EdgeInsets_12_0_0_0, B.SvgPicture$asset("assets/images/ic_filter_selected.svg", _null, A.BoxFit_0, 24, _null, 24), _null));
      itemChild = B.Row$(t2, A.CrossAxisAlignment_2, A.MainAxisAlignment_0, A.MainAxisSize_1, _null);
      t2 = _this.padding;
      if (t1 === D.SuggestionEmailState_0)
        return B.Material$(A.Duration_200000, true, _null, B.InkWell$(false, _null, true, new B.Padding(t2 == null ? A.EdgeInsets_12_12_12_12 : t2, itemChild, _null), _this.shapeBorder, true, _null, _null, _null, _null, _null, _null, _null, _null, _null, _null, _null, new C.ContactSuggestionBoxItem_build_closure(_this), _null, _null, _null, _null, _null, _null, _null), A.Clip_0, A.Color_0, 0, _null, _null, _null, _null, _null, A.MaterialType_0);
      else
        return B.Material$(A.Duration_200000, true, _null, new B.Padding(t2 == null ? A.EdgeInsets_12_12_12_12 : t2, itemChild, _null), A.Clip_0, A.Color_0, 0, _null, _null, _null, _null, _null, A.MaterialType_0);
    }
  };
  C.GradientColorAvatarIcon.prototype = {
    build$1(context) {
      var _this = this, _null = null,
        t1 = _this.iconSize,
        t2 = B.BorderRadius$circular(t1 * 0.5),
        t3 = B.Border_Border$all(A.Color_0, 1);
      return B.Container$(A.Alignment_0_0, B.Text$(_this.label, _null, _null, _null, _null, _null, _null, _null, _null, B.TextStyle$(_null, _null, A.Color_4294967295, _null, _null, _null, _null, _null, _null, _null, _null, _this.labelFontSize, _null, _null, A.FontWeight_5_600, _null, _null, true, _null, _null, _null, _null, _null, _null, _null, _null), _null, _null, _null, _null, _null), A.Clip_0, _null, _null, new B.BoxDecoration(A.Color_4294506744, _null, t3, t2, _null, new B.LinearGradient(A.Alignment_0_m1, A.Alignment_0_1, A.TileMode_0, _this.colors, A.List_0_1, _null), _null, A.BoxShape_0), _null, t1, _null, _null, _null, _null, _null, t1);
    }
  };
  var typesOffset = hunkHelpers.updateTypes([]);
  C.ContactSuggestionBoxItem_build_closure.prototype = {
    call$0() {
      var t1 = this.$this;
      t1 = t1.selectedContactCallbackAction.call$1(t1.suggestionEmailAddress.emailAddress);
      return t1;
    },
    $signature: 0
  };
  (function inheritance() {
    var _inheritMany = hunkHelpers.inheritMany,
      _inherit = hunkHelpers.inherit;
    _inheritMany(B.StatelessWidget, [C.ContactSuggestionBoxItem, C.GradientColorAvatarIcon]);
    _inherit(C.ContactSuggestionBoxItem_build_closure, B.Closure0Args);
  })();
  B._Universe_addRules(init.typeUniverse, JSON.parse('{"ContactSuggestionBoxItem":{"StatelessWidget":[],"Widget":[],"DiagnosticableTree":[]},"GradientColorAvatarIcon":{"StatelessWidget":[],"Widget":[],"DiagnosticableTree":[]}}'));
  var type$ = {
    ImagePaths: B.findType("ImagePaths"),
    JSArray_Widget: B.findType("JSArray<Widget>")
  };
  (function constants() {
    F.EdgeInsets_16_10_16_10 = new B.EdgeInsets(16, 10, 16, 10);
  })();
};

$__dart_deferred_initializers__["EBCcAZwe58h8bJHuEelJPTWYYrA="] = $__dart_deferred_initializers__.current
