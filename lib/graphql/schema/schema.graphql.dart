class Input$Graph_ql_updates {
  factory Input$Graph_ql_updates({
    required Input$Graph_ql_bool_exp where,
    Input$Graph_ql_inc_input? $_inc,
    Input$Graph_ql_set_input? $_set,
  }) =>
      Input$Graph_ql_updates._({
        r'where': where,
        if ($_inc != null) r'_inc': $_inc,
        if ($_set != null) r'_set': $_set,
      });

  Input$Graph_ql_updates._(this._$data);

  factory Input$Graph_ql_updates.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$where = data['where'];
    result$data['where'] =
        Input$Graph_ql_bool_exp.fromJson((l$where as Map<String, dynamic>));
    if (data.containsKey('_inc')) {
      final l$$_inc = data['_inc'];
      result$data['_inc'] = l$$_inc == null
          ? null
          : Input$Graph_ql_inc_input.fromJson(
              (l$$_inc as Map<String, dynamic>));
    }
    if (data.containsKey('_set')) {
      final l$$_set = data['_set'];
      result$data['_set'] = l$$_set == null
          ? null
          : Input$Graph_ql_set_input.fromJson(
              (l$$_set as Map<String, dynamic>));
    }
    return Input$Graph_ql_updates._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Graph_ql_bool_exp get where =>
      (_$data['where'] as Input$Graph_ql_bool_exp);

  Input$Graph_ql_inc_input? get $_inc =>
      (_$data['_inc'] as Input$Graph_ql_inc_input?);

  Input$Graph_ql_set_input? get $_set =>
      (_$data['_set'] as Input$Graph_ql_set_input?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$where = where;
    result$data['where'] = l$where.toJson();
    if (_$data.containsKey('_inc')) {
      final l$$_inc = $_inc;
      result$data['_inc'] = l$$_inc?.toJson();
    }
    if (_$data.containsKey('_set')) {
      final l$$_set = $_set;
      result$data['_set'] = l$$_set?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$Graph_ql_updates<Input$Graph_ql_updates> get copyWith =>
      CopyWith$Input$Graph_ql_updates(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Graph_ql_updates) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (l$where != lOther$where) {
      return false;
    }
    final l$$_inc = $_inc;
    final lOther$$_inc = other.$_inc;
    if (_$data.containsKey('_inc') != other._$data.containsKey('_inc')) {
      return false;
    }
    if (l$$_inc != lOther$$_inc) {
      return false;
    }
    final l$$_set = $_set;
    final lOther$$_set = other.$_set;
    if (_$data.containsKey('_set') != other._$data.containsKey('_set')) {
      return false;
    }
    if (l$$_set != lOther$$_set) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$where = where;
    final l$$_inc = $_inc;
    final l$$_set = $_set;
    return Object.hashAll([
      l$where,
      _$data.containsKey('_inc') ? l$$_inc : const {},
      _$data.containsKey('_set') ? l$$_set : const {},
    ]);
  }
}

abstract class CopyWith$Input$Graph_ql_updates<TRes> {
  factory CopyWith$Input$Graph_ql_updates(
    Input$Graph_ql_updates instance,
    TRes Function(Input$Graph_ql_updates) then,
  ) = _CopyWithImpl$Input$Graph_ql_updates;

  factory CopyWith$Input$Graph_ql_updates.stub(TRes res) =
      _CopyWithStubImpl$Input$Graph_ql_updates;

  TRes call({
    Input$Graph_ql_bool_exp? where,
    Input$Graph_ql_inc_input? $_inc,
    Input$Graph_ql_set_input? $_set,
  });
  CopyWith$Input$Graph_ql_bool_exp<TRes> get where;
  CopyWith$Input$Graph_ql_inc_input<TRes> get $_inc;
  CopyWith$Input$Graph_ql_set_input<TRes> get $_set;
}

class _CopyWithImpl$Input$Graph_ql_updates<TRes>
    implements CopyWith$Input$Graph_ql_updates<TRes> {
  _CopyWithImpl$Input$Graph_ql_updates(
    this._instance,
    this._then,
  );

  final Input$Graph_ql_updates _instance;

  final TRes Function(Input$Graph_ql_updates) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? where = _undefined,
    Object? $_inc = _undefined,
    Object? $_set = _undefined,
  }) =>
      _then(Input$Graph_ql_updates._({
        ..._instance._$data,
        if (where != _undefined && where != null)
          'where': (where as Input$Graph_ql_bool_exp),
        if ($_inc != _undefined) '_inc': ($_inc as Input$Graph_ql_inc_input?),
        if ($_set != _undefined) '_set': ($_set as Input$Graph_ql_set_input?),
      }));

  CopyWith$Input$Graph_ql_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return CopyWith$Input$Graph_ql_bool_exp(local$where, (e) => call(where: e));
  }

  CopyWith$Input$Graph_ql_inc_input<TRes> get $_inc {
    final local$$_inc = _instance.$_inc;
    return local$$_inc == null
        ? CopyWith$Input$Graph_ql_inc_input.stub(_then(_instance))
        : CopyWith$Input$Graph_ql_inc_input(local$$_inc, (e) => call($_inc: e));
  }

  CopyWith$Input$Graph_ql_set_input<TRes> get $_set {
    final local$$_set = _instance.$_set;
    return local$$_set == null
        ? CopyWith$Input$Graph_ql_set_input.stub(_then(_instance))
        : CopyWith$Input$Graph_ql_set_input(local$$_set, (e) => call($_set: e));
  }
}

class _CopyWithStubImpl$Input$Graph_ql_updates<TRes>
    implements CopyWith$Input$Graph_ql_updates<TRes> {
  _CopyWithStubImpl$Input$Graph_ql_updates(this._res);

  TRes _res;

  call({
    Input$Graph_ql_bool_exp? where,
    Input$Graph_ql_inc_input? $_inc,
    Input$Graph_ql_set_input? $_set,
  }) =>
      _res;

  CopyWith$Input$Graph_ql_bool_exp<TRes> get where =>
      CopyWith$Input$Graph_ql_bool_exp.stub(_res);

  CopyWith$Input$Graph_ql_inc_input<TRes> get $_inc =>
      CopyWith$Input$Graph_ql_inc_input.stub(_res);

  CopyWith$Input$Graph_ql_set_input<TRes> get $_set =>
      CopyWith$Input$Graph_ql_set_input.stub(_res);
}

class Input$Int_comparison_exp {
  factory Input$Int_comparison_exp({
    int? $_eq,
    int? $_gt,
    int? $_gte,
    List<int>? $_in,
    bool? $_is_null,
    int? $_lt,
    int? $_lte,
    int? $_neq,
    List<int>? $_nin,
  }) =>
      Input$Int_comparison_exp._({
        if ($_eq != null) r'_eq': $_eq,
        if ($_gt != null) r'_gt': $_gt,
        if ($_gte != null) r'_gte': $_gte,
        if ($_in != null) r'_in': $_in,
        if ($_is_null != null) r'_is_null': $_is_null,
        if ($_lt != null) r'_lt': $_lt,
        if ($_lte != null) r'_lte': $_lte,
        if ($_neq != null) r'_neq': $_neq,
        if ($_nin != null) r'_nin': $_nin,
      });

  Input$Int_comparison_exp._(this._$data);

  factory Input$Int_comparison_exp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as int?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as int?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as int?);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] =
          (l$$_in as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('_is_null')) {
      final l$$_is_null = data['_is_null'];
      result$data['_is_null'] = (l$$_is_null as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as int?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as int?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as int?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] =
          (l$$_nin as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    return Input$Int_comparison_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get $_eq => (_$data['_eq'] as int?);

  int? get $_gt => (_$data['_gt'] as int?);

  int? get $_gte => (_$data['_gte'] as int?);

  List<int>? get $_in => (_$data['_in'] as List<int>?);

  bool? get $_is_null => (_$data['_is_null'] as bool?);

  int? get $_lt => (_$data['_lt'] as int?);

  int? get $_lte => (_$data['_lte'] as int?);

  int? get $_neq => (_$data['_neq'] as int?);

  List<int>? get $_nin => (_$data['_nin'] as List<int>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq;
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt;
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte;
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('_is_null')) {
      final l$$_is_null = $_is_null;
      result$data['_is_null'] = l$$_is_null;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt;
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte;
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq;
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$Int_comparison_exp<Input$Int_comparison_exp> get copyWith =>
      CopyWith$Input$Int_comparison_exp(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Int_comparison_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (_$data.containsKey('_eq') != other._$data.containsKey('_eq')) {
      return false;
    }
    if (l$$_eq != lOther$$_eq) {
      return false;
    }
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (_$data.containsKey('_gt') != other._$data.containsKey('_gt')) {
      return false;
    }
    if (l$$_gt != lOther$$_gt) {
      return false;
    }
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (_$data.containsKey('_gte') != other._$data.containsKey('_gte')) {
      return false;
    }
    if (l$$_gte != lOther$$_gte) {
      return false;
    }
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (_$data.containsKey('_in') != other._$data.containsKey('_in')) {
      return false;
    }
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) {
        return false;
      }
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) {
          return false;
        }
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }
    final l$$_is_null = $_is_null;
    final lOther$$_is_null = other.$_is_null;
    if (_$data.containsKey('_is_null') !=
        other._$data.containsKey('_is_null')) {
      return false;
    }
    if (l$$_is_null != lOther$$_is_null) {
      return false;
    }
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (_$data.containsKey('_lt') != other._$data.containsKey('_lt')) {
      return false;
    }
    if (l$$_lt != lOther$$_lt) {
      return false;
    }
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (_$data.containsKey('_lte') != other._$data.containsKey('_lte')) {
      return false;
    }
    if (l$$_lte != lOther$$_lte) {
      return false;
    }
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (_$data.containsKey('_neq') != other._$data.containsKey('_neq')) {
      return false;
    }
    if (l$$_neq != lOther$$_neq) {
      return false;
    }
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (_$data.containsKey('_nin') != other._$data.containsKey('_nin')) {
      return false;
    }
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) {
        return false;
      }
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) {
          return false;
        }
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_is_null = $_is_null;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    return Object.hashAll([
      _$data.containsKey('_eq') ? l$$_eq : const {},
      _$data.containsKey('_gt') ? l$$_gt : const {},
      _$data.containsKey('_gte') ? l$$_gte : const {},
      _$data.containsKey('_in')
          ? l$$_in == null
              ? null
              : Object.hashAll(l$$_in.map((v) => v))
          : const {},
      _$data.containsKey('_is_null') ? l$$_is_null : const {},
      _$data.containsKey('_lt') ? l$$_lt : const {},
      _$data.containsKey('_lte') ? l$$_lte : const {},
      _$data.containsKey('_neq') ? l$$_neq : const {},
      _$data.containsKey('_nin')
          ? l$$_nin == null
              ? null
              : Object.hashAll(l$$_nin.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$Int_comparison_exp<TRes> {
  factory CopyWith$Input$Int_comparison_exp(
    Input$Int_comparison_exp instance,
    TRes Function(Input$Int_comparison_exp) then,
  ) = _CopyWithImpl$Input$Int_comparison_exp;

  factory CopyWith$Input$Int_comparison_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$Int_comparison_exp;

  TRes call({
    int? $_eq,
    int? $_gt,
    int? $_gte,
    List<int>? $_in,
    bool? $_is_null,
    int? $_lt,
    int? $_lte,
    int? $_neq,
    List<int>? $_nin,
  });
}

class _CopyWithImpl$Input$Int_comparison_exp<TRes>
    implements CopyWith$Input$Int_comparison_exp<TRes> {
  _CopyWithImpl$Input$Int_comparison_exp(
    this._instance,
    this._then,
  );

  final Input$Int_comparison_exp _instance;

  final TRes Function(Input$Int_comparison_exp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_in = _undefined,
    Object? $_is_null = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nin = _undefined,
  }) =>
      _then(Input$Int_comparison_exp._({
        ..._instance._$data,
        if ($_eq != _undefined) '_eq': ($_eq as int?),
        if ($_gt != _undefined) '_gt': ($_gt as int?),
        if ($_gte != _undefined) '_gte': ($_gte as int?),
        if ($_in != _undefined) '_in': ($_in as List<int>?),
        if ($_is_null != _undefined) '_is_null': ($_is_null as bool?),
        if ($_lt != _undefined) '_lt': ($_lt as int?),
        if ($_lte != _undefined) '_lte': ($_lte as int?),
        if ($_neq != _undefined) '_neq': ($_neq as int?),
        if ($_nin != _undefined) '_nin': ($_nin as List<int>?),
      }));
}

class _CopyWithStubImpl$Input$Int_comparison_exp<TRes>
    implements CopyWith$Input$Int_comparison_exp<TRes> {
  _CopyWithStubImpl$Input$Int_comparison_exp(this._res);

  TRes _res;

  call({
    int? $_eq,
    int? $_gt,
    int? $_gte,
    List<int>? $_in,
    bool? $_is_null,
    int? $_lt,
    int? $_lte,
    int? $_neq,
    List<int>? $_nin,
  }) =>
      _res;
}

class Input$String_comparison_exp {
  factory Input$String_comparison_exp({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    List<String>? $_in,
    bool? $_is_null,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    List<String>? $_nin,
    String? $_niregex,
    String? $_nregex,
    String? $_nsimilar,
    String? $_nilike,
    String? $_nlike,
    String? $_iregex,
    String? $_regex,
    String? $_similar,
    String? $_ilike,
    String? $_like,
  }) =>
      Input$String_comparison_exp._({
        if ($_eq != null) r'_eq': $_eq,
        if ($_gt != null) r'_gt': $_gt,
        if ($_gte != null) r'_gte': $_gte,
        if ($_in != null) r'_in': $_in,
        if ($_is_null != null) r'_is_null': $_is_null,
        if ($_lt != null) r'_lt': $_lt,
        if ($_lte != null) r'_lte': $_lte,
        if ($_neq != null) r'_neq': $_neq,
        if ($_nin != null) r'_nin': $_nin,
        if ($_niregex != null) r'_niregex': $_niregex,
        if ($_nregex != null) r'_nregex': $_nregex,
        if ($_nsimilar != null) r'_nsimilar': $_nsimilar,
        if ($_nilike != null) r'_nilike': $_nilike,
        if ($_nlike != null) r'_nlike': $_nlike,
        if ($_iregex != null) r'_iregex': $_iregex,
        if ($_regex != null) r'_regex': $_regex,
        if ($_similar != null) r'_similar': $_similar,
        if ($_ilike != null) r'_ilike': $_ilike,
        if ($_like != null) r'_like': $_like,
      });

  Input$String_comparison_exp._(this._$data);

  factory Input$String_comparison_exp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_eq')) {
      final l$$_eq = data['_eq'];
      result$data['_eq'] = (l$$_eq as String?);
    }
    if (data.containsKey('_gt')) {
      final l$$_gt = data['_gt'];
      result$data['_gt'] = (l$$_gt as String?);
    }
    if (data.containsKey('_gte')) {
      final l$$_gte = data['_gte'];
      result$data['_gte'] = (l$$_gte as String?);
    }
    if (data.containsKey('_in')) {
      final l$$_in = data['_in'];
      result$data['_in'] =
          (l$$_in as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('_is_null')) {
      final l$$_is_null = data['_is_null'];
      result$data['_is_null'] = (l$$_is_null as bool?);
    }
    if (data.containsKey('_lt')) {
      final l$$_lt = data['_lt'];
      result$data['_lt'] = (l$$_lt as String?);
    }
    if (data.containsKey('_lte')) {
      final l$$_lte = data['_lte'];
      result$data['_lte'] = (l$$_lte as String?);
    }
    if (data.containsKey('_neq')) {
      final l$$_neq = data['_neq'];
      result$data['_neq'] = (l$$_neq as String?);
    }
    if (data.containsKey('_nin')) {
      final l$$_nin = data['_nin'];
      result$data['_nin'] =
          (l$$_nin as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('_niregex')) {
      final l$$_niregex = data['_niregex'];
      result$data['_niregex'] = (l$$_niregex as String?);
    }
    if (data.containsKey('_nregex')) {
      final l$$_nregex = data['_nregex'];
      result$data['_nregex'] = (l$$_nregex as String?);
    }
    if (data.containsKey('_nsimilar')) {
      final l$$_nsimilar = data['_nsimilar'];
      result$data['_nsimilar'] = (l$$_nsimilar as String?);
    }
    if (data.containsKey('_nilike')) {
      final l$$_nilike = data['_nilike'];
      result$data['_nilike'] = (l$$_nilike as String?);
    }
    if (data.containsKey('_nlike')) {
      final l$$_nlike = data['_nlike'];
      result$data['_nlike'] = (l$$_nlike as String?);
    }
    if (data.containsKey('_iregex')) {
      final l$$_iregex = data['_iregex'];
      result$data['_iregex'] = (l$$_iregex as String?);
    }
    if (data.containsKey('_regex')) {
      final l$$_regex = data['_regex'];
      result$data['_regex'] = (l$$_regex as String?);
    }
    if (data.containsKey('_similar')) {
      final l$$_similar = data['_similar'];
      result$data['_similar'] = (l$$_similar as String?);
    }
    if (data.containsKey('_ilike')) {
      final l$$_ilike = data['_ilike'];
      result$data['_ilike'] = (l$$_ilike as String?);
    }
    if (data.containsKey('_like')) {
      final l$$_like = data['_like'];
      result$data['_like'] = (l$$_like as String?);
    }
    return Input$String_comparison_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get $_eq => (_$data['_eq'] as String?);

  String? get $_gt => (_$data['_gt'] as String?);

  String? get $_gte => (_$data['_gte'] as String?);

  List<String>? get $_in => (_$data['_in'] as List<String>?);

  bool? get $_is_null => (_$data['_is_null'] as bool?);

  String? get $_lt => (_$data['_lt'] as String?);

  String? get $_lte => (_$data['_lte'] as String?);

  String? get $_neq => (_$data['_neq'] as String?);

  List<String>? get $_nin => (_$data['_nin'] as List<String>?);

  String? get $_niregex => (_$data['_niregex'] as String?);

  String? get $_nregex => (_$data['_nregex'] as String?);

  String? get $_nsimilar => (_$data['_nsimilar'] as String?);

  String? get $_nilike => (_$data['_nilike'] as String?);

  String? get $_nlike => (_$data['_nlike'] as String?);

  String? get $_iregex => (_$data['_iregex'] as String?);

  String? get $_regex => (_$data['_regex'] as String?);

  String? get $_similar => (_$data['_similar'] as String?);

  String? get $_ilike => (_$data['_ilike'] as String?);

  String? get $_like => (_$data['_like'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_eq')) {
      final l$$_eq = $_eq;
      result$data['_eq'] = l$$_eq;
    }
    if (_$data.containsKey('_gt')) {
      final l$$_gt = $_gt;
      result$data['_gt'] = l$$_gt;
    }
    if (_$data.containsKey('_gte')) {
      final l$$_gte = $_gte;
      result$data['_gte'] = l$$_gte;
    }
    if (_$data.containsKey('_in')) {
      final l$$_in = $_in;
      result$data['_in'] = l$$_in?.map((e) => e).toList();
    }
    if (_$data.containsKey('_is_null')) {
      final l$$_is_null = $_is_null;
      result$data['_is_null'] = l$$_is_null;
    }
    if (_$data.containsKey('_lt')) {
      final l$$_lt = $_lt;
      result$data['_lt'] = l$$_lt;
    }
    if (_$data.containsKey('_lte')) {
      final l$$_lte = $_lte;
      result$data['_lte'] = l$$_lte;
    }
    if (_$data.containsKey('_neq')) {
      final l$$_neq = $_neq;
      result$data['_neq'] = l$$_neq;
    }
    if (_$data.containsKey('_nin')) {
      final l$$_nin = $_nin;
      result$data['_nin'] = l$$_nin?.map((e) => e).toList();
    }
    if (_$data.containsKey('_niregex')) {
      final l$$_niregex = $_niregex;
      result$data['_niregex'] = l$$_niregex;
    }
    if (_$data.containsKey('_nregex')) {
      final l$$_nregex = $_nregex;
      result$data['_nregex'] = l$$_nregex;
    }
    if (_$data.containsKey('_nsimilar')) {
      final l$$_nsimilar = $_nsimilar;
      result$data['_nsimilar'] = l$$_nsimilar;
    }
    if (_$data.containsKey('_nilike')) {
      final l$$_nilike = $_nilike;
      result$data['_nilike'] = l$$_nilike;
    }
    if (_$data.containsKey('_nlike')) {
      final l$$_nlike = $_nlike;
      result$data['_nlike'] = l$$_nlike;
    }
    if (_$data.containsKey('_iregex')) {
      final l$$_iregex = $_iregex;
      result$data['_iregex'] = l$$_iregex;
    }
    if (_$data.containsKey('_regex')) {
      final l$$_regex = $_regex;
      result$data['_regex'] = l$$_regex;
    }
    if (_$data.containsKey('_similar')) {
      final l$$_similar = $_similar;
      result$data['_similar'] = l$$_similar;
    }
    if (_$data.containsKey('_ilike')) {
      final l$$_ilike = $_ilike;
      result$data['_ilike'] = l$$_ilike;
    }
    if (_$data.containsKey('_like')) {
      final l$$_like = $_like;
      result$data['_like'] = l$$_like;
    }
    return result$data;
  }

  CopyWith$Input$String_comparison_exp<Input$String_comparison_exp>
      get copyWith => CopyWith$Input$String_comparison_exp(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$String_comparison_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_eq = $_eq;
    final lOther$$_eq = other.$_eq;
    if (_$data.containsKey('_eq') != other._$data.containsKey('_eq')) {
      return false;
    }
    if (l$$_eq != lOther$$_eq) {
      return false;
    }
    final l$$_gt = $_gt;
    final lOther$$_gt = other.$_gt;
    if (_$data.containsKey('_gt') != other._$data.containsKey('_gt')) {
      return false;
    }
    if (l$$_gt != lOther$$_gt) {
      return false;
    }
    final l$$_gte = $_gte;
    final lOther$$_gte = other.$_gte;
    if (_$data.containsKey('_gte') != other._$data.containsKey('_gte')) {
      return false;
    }
    if (l$$_gte != lOther$$_gte) {
      return false;
    }
    final l$$_in = $_in;
    final lOther$$_in = other.$_in;
    if (_$data.containsKey('_in') != other._$data.containsKey('_in')) {
      return false;
    }
    if (l$$_in != null && lOther$$_in != null) {
      if (l$$_in.length != lOther$$_in.length) {
        return false;
      }
      for (int i = 0; i < l$$_in.length; i++) {
        final l$$_in$entry = l$$_in[i];
        final lOther$$_in$entry = lOther$$_in[i];
        if (l$$_in$entry != lOther$$_in$entry) {
          return false;
        }
      }
    } else if (l$$_in != lOther$$_in) {
      return false;
    }
    final l$$_is_null = $_is_null;
    final lOther$$_is_null = other.$_is_null;
    if (_$data.containsKey('_is_null') !=
        other._$data.containsKey('_is_null')) {
      return false;
    }
    if (l$$_is_null != lOther$$_is_null) {
      return false;
    }
    final l$$_lt = $_lt;
    final lOther$$_lt = other.$_lt;
    if (_$data.containsKey('_lt') != other._$data.containsKey('_lt')) {
      return false;
    }
    if (l$$_lt != lOther$$_lt) {
      return false;
    }
    final l$$_lte = $_lte;
    final lOther$$_lte = other.$_lte;
    if (_$data.containsKey('_lte') != other._$data.containsKey('_lte')) {
      return false;
    }
    if (l$$_lte != lOther$$_lte) {
      return false;
    }
    final l$$_neq = $_neq;
    final lOther$$_neq = other.$_neq;
    if (_$data.containsKey('_neq') != other._$data.containsKey('_neq')) {
      return false;
    }
    if (l$$_neq != lOther$$_neq) {
      return false;
    }
    final l$$_nin = $_nin;
    final lOther$$_nin = other.$_nin;
    if (_$data.containsKey('_nin') != other._$data.containsKey('_nin')) {
      return false;
    }
    if (l$$_nin != null && lOther$$_nin != null) {
      if (l$$_nin.length != lOther$$_nin.length) {
        return false;
      }
      for (int i = 0; i < l$$_nin.length; i++) {
        final l$$_nin$entry = l$$_nin[i];
        final lOther$$_nin$entry = lOther$$_nin[i];
        if (l$$_nin$entry != lOther$$_nin$entry) {
          return false;
        }
      }
    } else if (l$$_nin != lOther$$_nin) {
      return false;
    }
    final l$$_niregex = $_niregex;
    final lOther$$_niregex = other.$_niregex;
    if (_$data.containsKey('_niregex') !=
        other._$data.containsKey('_niregex')) {
      return false;
    }
    if (l$$_niregex != lOther$$_niregex) {
      return false;
    }
    final l$$_nregex = $_nregex;
    final lOther$$_nregex = other.$_nregex;
    if (_$data.containsKey('_nregex') != other._$data.containsKey('_nregex')) {
      return false;
    }
    if (l$$_nregex != lOther$$_nregex) {
      return false;
    }
    final l$$_nsimilar = $_nsimilar;
    final lOther$$_nsimilar = other.$_nsimilar;
    if (_$data.containsKey('_nsimilar') !=
        other._$data.containsKey('_nsimilar')) {
      return false;
    }
    if (l$$_nsimilar != lOther$$_nsimilar) {
      return false;
    }
    final l$$_nilike = $_nilike;
    final lOther$$_nilike = other.$_nilike;
    if (_$data.containsKey('_nilike') != other._$data.containsKey('_nilike')) {
      return false;
    }
    if (l$$_nilike != lOther$$_nilike) {
      return false;
    }
    final l$$_nlike = $_nlike;
    final lOther$$_nlike = other.$_nlike;
    if (_$data.containsKey('_nlike') != other._$data.containsKey('_nlike')) {
      return false;
    }
    if (l$$_nlike != lOther$$_nlike) {
      return false;
    }
    final l$$_iregex = $_iregex;
    final lOther$$_iregex = other.$_iregex;
    if (_$data.containsKey('_iregex') != other._$data.containsKey('_iregex')) {
      return false;
    }
    if (l$$_iregex != lOther$$_iregex) {
      return false;
    }
    final l$$_regex = $_regex;
    final lOther$$_regex = other.$_regex;
    if (_$data.containsKey('_regex') != other._$data.containsKey('_regex')) {
      return false;
    }
    if (l$$_regex != lOther$$_regex) {
      return false;
    }
    final l$$_similar = $_similar;
    final lOther$$_similar = other.$_similar;
    if (_$data.containsKey('_similar') !=
        other._$data.containsKey('_similar')) {
      return false;
    }
    if (l$$_similar != lOther$$_similar) {
      return false;
    }
    final l$$_ilike = $_ilike;
    final lOther$$_ilike = other.$_ilike;
    if (_$data.containsKey('_ilike') != other._$data.containsKey('_ilike')) {
      return false;
    }
    if (l$$_ilike != lOther$$_ilike) {
      return false;
    }
    final l$$_like = $_like;
    final lOther$$_like = other.$_like;
    if (_$data.containsKey('_like') != other._$data.containsKey('_like')) {
      return false;
    }
    if (l$$_like != lOther$$_like) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_eq = $_eq;
    final l$$_gt = $_gt;
    final l$$_gte = $_gte;
    final l$$_in = $_in;
    final l$$_is_null = $_is_null;
    final l$$_lt = $_lt;
    final l$$_lte = $_lte;
    final l$$_neq = $_neq;
    final l$$_nin = $_nin;
    final l$$_niregex = $_niregex;
    final l$$_nregex = $_nregex;
    final l$$_nsimilar = $_nsimilar;
    final l$$_nilike = $_nilike;
    final l$$_nlike = $_nlike;
    final l$$_iregex = $_iregex;
    final l$$_regex = $_regex;
    final l$$_similar = $_similar;
    final l$$_ilike = $_ilike;
    final l$$_like = $_like;
    return Object.hashAll([
      _$data.containsKey('_eq') ? l$$_eq : const {},
      _$data.containsKey('_gt') ? l$$_gt : const {},
      _$data.containsKey('_gte') ? l$$_gte : const {},
      _$data.containsKey('_in')
          ? l$$_in == null
              ? null
              : Object.hashAll(l$$_in.map((v) => v))
          : const {},
      _$data.containsKey('_is_null') ? l$$_is_null : const {},
      _$data.containsKey('_lt') ? l$$_lt : const {},
      _$data.containsKey('_lte') ? l$$_lte : const {},
      _$data.containsKey('_neq') ? l$$_neq : const {},
      _$data.containsKey('_nin')
          ? l$$_nin == null
              ? null
              : Object.hashAll(l$$_nin.map((v) => v))
          : const {},
      _$data.containsKey('_niregex') ? l$$_niregex : const {},
      _$data.containsKey('_nregex') ? l$$_nregex : const {},
      _$data.containsKey('_nsimilar') ? l$$_nsimilar : const {},
      _$data.containsKey('_nilike') ? l$$_nilike : const {},
      _$data.containsKey('_nlike') ? l$$_nlike : const {},
      _$data.containsKey('_iregex') ? l$$_iregex : const {},
      _$data.containsKey('_regex') ? l$$_regex : const {},
      _$data.containsKey('_similar') ? l$$_similar : const {},
      _$data.containsKey('_ilike') ? l$$_ilike : const {},
      _$data.containsKey('_like') ? l$$_like : const {},
    ]);
  }
}

abstract class CopyWith$Input$String_comparison_exp<TRes> {
  factory CopyWith$Input$String_comparison_exp(
    Input$String_comparison_exp instance,
    TRes Function(Input$String_comparison_exp) then,
  ) = _CopyWithImpl$Input$String_comparison_exp;

  factory CopyWith$Input$String_comparison_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$String_comparison_exp;

  TRes call({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    List<String>? $_in,
    bool? $_is_null,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    List<String>? $_nin,
    String? $_niregex,
    String? $_nregex,
    String? $_nsimilar,
    String? $_nilike,
    String? $_nlike,
    String? $_iregex,
    String? $_regex,
    String? $_similar,
    String? $_ilike,
    String? $_like,
  });
}

class _CopyWithImpl$Input$String_comparison_exp<TRes>
    implements CopyWith$Input$String_comparison_exp<TRes> {
  _CopyWithImpl$Input$String_comparison_exp(
    this._instance,
    this._then,
  );

  final Input$String_comparison_exp _instance;

  final TRes Function(Input$String_comparison_exp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_eq = _undefined,
    Object? $_gt = _undefined,
    Object? $_gte = _undefined,
    Object? $_in = _undefined,
    Object? $_is_null = _undefined,
    Object? $_lt = _undefined,
    Object? $_lte = _undefined,
    Object? $_neq = _undefined,
    Object? $_nin = _undefined,
    Object? $_niregex = _undefined,
    Object? $_nregex = _undefined,
    Object? $_nsimilar = _undefined,
    Object? $_nilike = _undefined,
    Object? $_nlike = _undefined,
    Object? $_iregex = _undefined,
    Object? $_regex = _undefined,
    Object? $_similar = _undefined,
    Object? $_ilike = _undefined,
    Object? $_like = _undefined,
  }) =>
      _then(Input$String_comparison_exp._({
        ..._instance._$data,
        if ($_eq != _undefined) '_eq': ($_eq as String?),
        if ($_gt != _undefined) '_gt': ($_gt as String?),
        if ($_gte != _undefined) '_gte': ($_gte as String?),
        if ($_in != _undefined) '_in': ($_in as List<String>?),
        if ($_is_null != _undefined) '_is_null': ($_is_null as bool?),
        if ($_lt != _undefined) '_lt': ($_lt as String?),
        if ($_lte != _undefined) '_lte': ($_lte as String?),
        if ($_neq != _undefined) '_neq': ($_neq as String?),
        if ($_nin != _undefined) '_nin': ($_nin as List<String>?),
        if ($_niregex != _undefined) '_niregex': ($_niregex as String?),
        if ($_nregex != _undefined) '_nregex': ($_nregex as String?),
        if ($_nsimilar != _undefined) '_nsimilar': ($_nsimilar as String?),
        if ($_nilike != _undefined) '_nilike': ($_nilike as String?),
        if ($_nlike != _undefined) '_nlike': ($_nlike as String?),
        if ($_iregex != _undefined) '_iregex': ($_iregex as String?),
        if ($_regex != _undefined) '_regex': ($_regex as String?),
        if ($_similar != _undefined) '_similar': ($_similar as String?),
        if ($_ilike != _undefined) '_ilike': ($_ilike as String?),
        if ($_like != _undefined) '_like': ($_like as String?),
      }));
}

class _CopyWithStubImpl$Input$String_comparison_exp<TRes>
    implements CopyWith$Input$String_comparison_exp<TRes> {
  _CopyWithStubImpl$Input$String_comparison_exp(this._res);

  TRes _res;

  call({
    String? $_eq,
    String? $_gt,
    String? $_gte,
    List<String>? $_in,
    bool? $_is_null,
    String? $_lt,
    String? $_lte,
    String? $_neq,
    List<String>? $_nin,
    String? $_niregex,
    String? $_nregex,
    String? $_nsimilar,
    String? $_nilike,
    String? $_nlike,
    String? $_iregex,
    String? $_regex,
    String? $_similar,
    String? $_ilike,
    String? $_like,
  }) =>
      _res;
}

class Input$Graph_ql_bool_exp {
  factory Input$Graph_ql_bool_exp({
    List<Input$Graph_ql_bool_exp>? $_and,
    Input$Graph_ql_bool_exp? $_not,
    List<Input$Graph_ql_bool_exp>? $_or,
    Input$Int_comparison_exp? id,
    Input$String_comparison_exp? name,
  }) =>
      Input$Graph_ql_bool_exp._({
        if ($_and != null) r'_and': $_and,
        if ($_not != null) r'_not': $_not,
        if ($_or != null) r'_or': $_or,
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input$Graph_ql_bool_exp._(this._$data);

  factory Input$Graph_ql_bool_exp.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('_and')) {
      final l$$_and = data['_and'];
      result$data['_and'] = (l$$_and as List<dynamic>?)
          ?.map((e) =>
              Input$Graph_ql_bool_exp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('_not')) {
      final l$$_not = data['_not'];
      result$data['_not'] = l$$_not == null
          ? null
          : Input$Graph_ql_bool_exp.fromJson((l$$_not as Map<String, dynamic>));
    }
    if (data.containsKey('_or')) {
      final l$$_or = data['_or'];
      result$data['_or'] = (l$$_or as List<dynamic>?)
          ?.map((e) =>
              Input$Graph_ql_bool_exp.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$Int_comparison_exp.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = l$name == null
          ? null
          : Input$String_comparison_exp.fromJson(
              (l$name as Map<String, dynamic>));
    }
    return Input$Graph_ql_bool_exp._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$Graph_ql_bool_exp>? get $_and =>
      (_$data['_and'] as List<Input$Graph_ql_bool_exp>?);

  Input$Graph_ql_bool_exp? get $_not =>
      (_$data['_not'] as Input$Graph_ql_bool_exp?);

  List<Input$Graph_ql_bool_exp>? get $_or =>
      (_$data['_or'] as List<Input$Graph_ql_bool_exp>?);

  Input$Int_comparison_exp? get id =>
      (_$data['id'] as Input$Int_comparison_exp?);

  Input$String_comparison_exp? get name =>
      (_$data['name'] as Input$String_comparison_exp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('_and')) {
      final l$$_and = $_and;
      result$data['_and'] = l$$_and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('_not')) {
      final l$$_not = $_not;
      result$data['_not'] = l$$_not?.toJson();
    }
    if (_$data.containsKey('_or')) {
      final l$$_or = $_or;
      result$data['_or'] = l$$_or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$Graph_ql_bool_exp<Input$Graph_ql_bool_exp> get copyWith =>
      CopyWith$Input$Graph_ql_bool_exp(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Graph_ql_bool_exp) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$_and = $_and;
    final lOther$$_and = other.$_and;
    if (_$data.containsKey('_and') != other._$data.containsKey('_and')) {
      return false;
    }
    if (l$$_and != null && lOther$$_and != null) {
      if (l$$_and.length != lOther$$_and.length) {
        return false;
      }
      for (int i = 0; i < l$$_and.length; i++) {
        final l$$_and$entry = l$$_and[i];
        final lOther$$_and$entry = lOther$$_and[i];
        if (l$$_and$entry != lOther$$_and$entry) {
          return false;
        }
      }
    } else if (l$$_and != lOther$$_and) {
      return false;
    }
    final l$$_not = $_not;
    final lOther$$_not = other.$_not;
    if (_$data.containsKey('_not') != other._$data.containsKey('_not')) {
      return false;
    }
    if (l$$_not != lOther$$_not) {
      return false;
    }
    final l$$_or = $_or;
    final lOther$$_or = other.$_or;
    if (_$data.containsKey('_or') != other._$data.containsKey('_or')) {
      return false;
    }
    if (l$$_or != null && lOther$$_or != null) {
      if (l$$_or.length != lOther$$_or.length) {
        return false;
      }
      for (int i = 0; i < l$$_or.length; i++) {
        final l$$_or$entry = l$$_or[i];
        final lOther$$_or$entry = lOther$$_or[i];
        if (l$$_or$entry != lOther$$_or$entry) {
          return false;
        }
      }
    } else if (l$$_or != lOther$$_or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$_and = $_and;
    final l$$_not = $_not;
    final l$$_or = $_or;
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('_and')
          ? l$$_and == null
              ? null
              : Object.hashAll(l$$_and.map((v) => v))
          : const {},
      _$data.containsKey('_not') ? l$$_not : const {},
      _$data.containsKey('_or')
          ? l$$_or == null
              ? null
              : Object.hashAll(l$$_or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Input$Graph_ql_bool_exp<TRes> {
  factory CopyWith$Input$Graph_ql_bool_exp(
    Input$Graph_ql_bool_exp instance,
    TRes Function(Input$Graph_ql_bool_exp) then,
  ) = _CopyWithImpl$Input$Graph_ql_bool_exp;

  factory CopyWith$Input$Graph_ql_bool_exp.stub(TRes res) =
      _CopyWithStubImpl$Input$Graph_ql_bool_exp;

  TRes call({
    List<Input$Graph_ql_bool_exp>? $_and,
    Input$Graph_ql_bool_exp? $_not,
    List<Input$Graph_ql_bool_exp>? $_or,
    Input$Int_comparison_exp? id,
    Input$String_comparison_exp? name,
  });
  TRes $_and(
      Iterable<Input$Graph_ql_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$Graph_ql_bool_exp<Input$Graph_ql_bool_exp>>?)
          _fn);
  CopyWith$Input$Graph_ql_bool_exp<TRes> get $_not;
  TRes $_or(
      Iterable<Input$Graph_ql_bool_exp>? Function(
              Iterable<
                  CopyWith$Input$Graph_ql_bool_exp<Input$Graph_ql_bool_exp>>?)
          _fn);
  CopyWith$Input$Int_comparison_exp<TRes> get id;
  CopyWith$Input$String_comparison_exp<TRes> get name;
}

class _CopyWithImpl$Input$Graph_ql_bool_exp<TRes>
    implements CopyWith$Input$Graph_ql_bool_exp<TRes> {
  _CopyWithImpl$Input$Graph_ql_bool_exp(
    this._instance,
    this._then,
  );

  final Input$Graph_ql_bool_exp _instance;

  final TRes Function(Input$Graph_ql_bool_exp) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $_and = _undefined,
    Object? $_not = _undefined,
    Object? $_or = _undefined,
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$Graph_ql_bool_exp._({
        ..._instance._$data,
        if ($_and != _undefined)
          '_and': ($_and as List<Input$Graph_ql_bool_exp>?),
        if ($_not != _undefined) '_not': ($_not as Input$Graph_ql_bool_exp?),
        if ($_or != _undefined) '_or': ($_or as List<Input$Graph_ql_bool_exp>?),
        if (id != _undefined) 'id': (id as Input$Int_comparison_exp?),
        if (name != _undefined) 'name': (name as Input$String_comparison_exp?),
      }));

  TRes $_and(
          Iterable<Input$Graph_ql_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$Graph_ql_bool_exp<
                          Input$Graph_ql_bool_exp>>?)
              _fn) =>
      call(
          $_and:
              _fn(_instance.$_and?.map((e) => CopyWith$Input$Graph_ql_bool_exp(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$Graph_ql_bool_exp<TRes> get $_not {
    final local$$_not = _instance.$_not;
    return local$$_not == null
        ? CopyWith$Input$Graph_ql_bool_exp.stub(_then(_instance))
        : CopyWith$Input$Graph_ql_bool_exp(local$$_not, (e) => call($_not: e));
  }

  TRes $_or(
          Iterable<Input$Graph_ql_bool_exp>? Function(
                  Iterable<
                      CopyWith$Input$Graph_ql_bool_exp<
                          Input$Graph_ql_bool_exp>>?)
              _fn) =>
      call(
          $_or: _fn(_instance.$_or?.map((e) => CopyWith$Input$Graph_ql_bool_exp(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$Int_comparison_exp<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$Int_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$Int_comparison_exp(local$id, (e) => call(id: e));
  }

  CopyWith$Input$String_comparison_exp<TRes> get name {
    final local$name = _instance.name;
    return local$name == null
        ? CopyWith$Input$String_comparison_exp.stub(_then(_instance))
        : CopyWith$Input$String_comparison_exp(
            local$name, (e) => call(name: e));
  }
}

class _CopyWithStubImpl$Input$Graph_ql_bool_exp<TRes>
    implements CopyWith$Input$Graph_ql_bool_exp<TRes> {
  _CopyWithStubImpl$Input$Graph_ql_bool_exp(this._res);

  TRes _res;

  call({
    List<Input$Graph_ql_bool_exp>? $_and,
    Input$Graph_ql_bool_exp? $_not,
    List<Input$Graph_ql_bool_exp>? $_or,
    Input$Int_comparison_exp? id,
    Input$String_comparison_exp? name,
  }) =>
      _res;

  $_and(_fn) => _res;

  CopyWith$Input$Graph_ql_bool_exp<TRes> get $_not =>
      CopyWith$Input$Graph_ql_bool_exp.stub(_res);

  $_or(_fn) => _res;

  CopyWith$Input$Int_comparison_exp<TRes> get id =>
      CopyWith$Input$Int_comparison_exp.stub(_res);

  CopyWith$Input$String_comparison_exp<TRes> get name =>
      CopyWith$Input$String_comparison_exp.stub(_res);
}

class Input$Graph_ql_stream_cursor_value_input {
  factory Input$Graph_ql_stream_cursor_value_input({
    int? id,
    String? name,
  }) =>
      Input$Graph_ql_stream_cursor_value_input._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input$Graph_ql_stream_cursor_value_input._(this._$data);

  factory Input$Graph_ql_stream_cursor_value_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input$Graph_ql_stream_cursor_value_input._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Input$Graph_ql_stream_cursor_value_input<
          Input$Graph_ql_stream_cursor_value_input>
      get copyWith => CopyWith$Input$Graph_ql_stream_cursor_value_input(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Graph_ql_stream_cursor_value_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Input$Graph_ql_stream_cursor_value_input<TRes> {
  factory CopyWith$Input$Graph_ql_stream_cursor_value_input(
    Input$Graph_ql_stream_cursor_value_input instance,
    TRes Function(Input$Graph_ql_stream_cursor_value_input) then,
  ) = _CopyWithImpl$Input$Graph_ql_stream_cursor_value_input;

  factory CopyWith$Input$Graph_ql_stream_cursor_value_input.stub(TRes res) =
      _CopyWithStubImpl$Input$Graph_ql_stream_cursor_value_input;

  TRes call({
    int? id,
    String? name,
  });
}

class _CopyWithImpl$Input$Graph_ql_stream_cursor_value_input<TRes>
    implements CopyWith$Input$Graph_ql_stream_cursor_value_input<TRes> {
  _CopyWithImpl$Input$Graph_ql_stream_cursor_value_input(
    this._instance,
    this._then,
  );

  final Input$Graph_ql_stream_cursor_value_input _instance;

  final TRes Function(Input$Graph_ql_stream_cursor_value_input) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$Graph_ql_stream_cursor_value_input._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Input$Graph_ql_stream_cursor_value_input<TRes>
    implements CopyWith$Input$Graph_ql_stream_cursor_value_input<TRes> {
  _CopyWithStubImpl$Input$Graph_ql_stream_cursor_value_input(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
  }) =>
      _res;
}

class Input$Graph_ql_order_by {
  factory Input$Graph_ql_order_by({
    Enum$order_by? id,
    Enum$order_by? name,
  }) =>
      Input$Graph_ql_order_by._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input$Graph_ql_order_by._(this._$data);

  factory Input$Graph_ql_order_by.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] =
          l$id == null ? null : fromJson$Enum$order_by((l$id as String));
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] =
          l$name == null ? null : fromJson$Enum$order_by((l$name as String));
    }
    return Input$Graph_ql_order_by._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$order_by? get id => (_$data['id'] as Enum$order_by?);

  Enum$order_by? get name => (_$data['name'] as Enum$order_by?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id == null ? null : toJson$Enum$order_by(l$id);
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] =
          l$name == null ? null : toJson$Enum$order_by(l$name);
    }
    return result$data;
  }

  CopyWith$Input$Graph_ql_order_by<Input$Graph_ql_order_by> get copyWith =>
      CopyWith$Input$Graph_ql_order_by(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Graph_ql_order_by) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Input$Graph_ql_order_by<TRes> {
  factory CopyWith$Input$Graph_ql_order_by(
    Input$Graph_ql_order_by instance,
    TRes Function(Input$Graph_ql_order_by) then,
  ) = _CopyWithImpl$Input$Graph_ql_order_by;

  factory CopyWith$Input$Graph_ql_order_by.stub(TRes res) =
      _CopyWithStubImpl$Input$Graph_ql_order_by;

  TRes call({
    Enum$order_by? id,
    Enum$order_by? name,
  });
}

class _CopyWithImpl$Input$Graph_ql_order_by<TRes>
    implements CopyWith$Input$Graph_ql_order_by<TRes> {
  _CopyWithImpl$Input$Graph_ql_order_by(
    this._instance,
    this._then,
  );

  final Input$Graph_ql_order_by _instance;

  final TRes Function(Input$Graph_ql_order_by) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$Graph_ql_order_by._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as Enum$order_by?),
        if (name != _undefined) 'name': (name as Enum$order_by?),
      }));
}

class _CopyWithStubImpl$Input$Graph_ql_order_by<TRes>
    implements CopyWith$Input$Graph_ql_order_by<TRes> {
  _CopyWithStubImpl$Input$Graph_ql_order_by(this._res);

  TRes _res;

  call({
    Enum$order_by? id,
    Enum$order_by? name,
  }) =>
      _res;
}

class Input$Graph_ql_stream_cursor_input {
  factory Input$Graph_ql_stream_cursor_input({
    required Input$Graph_ql_stream_cursor_value_input initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      Input$Graph_ql_stream_cursor_input._({
        r'initial_value': initial_value,
        if (ordering != null) r'ordering': ordering,
      });

  Input$Graph_ql_stream_cursor_input._(this._$data);

  factory Input$Graph_ql_stream_cursor_input.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$initial_value = data['initial_value'];
    result$data['initial_value'] =
        Input$Graph_ql_stream_cursor_value_input.fromJson(
            (l$initial_value as Map<String, dynamic>));
    if (data.containsKey('ordering')) {
      final l$ordering = data['ordering'];
      result$data['ordering'] = l$ordering == null
          ? null
          : fromJson$Enum$cursor_ordering((l$ordering as String));
    }
    return Input$Graph_ql_stream_cursor_input._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$Graph_ql_stream_cursor_value_input get initial_value =>
      (_$data['initial_value'] as Input$Graph_ql_stream_cursor_value_input);

  Enum$cursor_ordering? get ordering =>
      (_$data['ordering'] as Enum$cursor_ordering?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$initial_value = initial_value;
    result$data['initial_value'] = l$initial_value.toJson();
    if (_$data.containsKey('ordering')) {
      final l$ordering = ordering;
      result$data['ordering'] =
          l$ordering == null ? null : toJson$Enum$cursor_ordering(l$ordering);
    }
    return result$data;
  }

  CopyWith$Input$Graph_ql_stream_cursor_input<
          Input$Graph_ql_stream_cursor_input>
      get copyWith => CopyWith$Input$Graph_ql_stream_cursor_input(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Graph_ql_stream_cursor_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$initial_value = initial_value;
    final lOther$initial_value = other.initial_value;
    if (l$initial_value != lOther$initial_value) {
      return false;
    }
    final l$ordering = ordering;
    final lOther$ordering = other.ordering;
    if (_$data.containsKey('ordering') !=
        other._$data.containsKey('ordering')) {
      return false;
    }
    if (l$ordering != lOther$ordering) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$initial_value = initial_value;
    final l$ordering = ordering;
    return Object.hashAll([
      l$initial_value,
      _$data.containsKey('ordering') ? l$ordering : const {},
    ]);
  }
}

abstract class CopyWith$Input$Graph_ql_stream_cursor_input<TRes> {
  factory CopyWith$Input$Graph_ql_stream_cursor_input(
    Input$Graph_ql_stream_cursor_input instance,
    TRes Function(Input$Graph_ql_stream_cursor_input) then,
  ) = _CopyWithImpl$Input$Graph_ql_stream_cursor_input;

  factory CopyWith$Input$Graph_ql_stream_cursor_input.stub(TRes res) =
      _CopyWithStubImpl$Input$Graph_ql_stream_cursor_input;

  TRes call({
    Input$Graph_ql_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  });
  CopyWith$Input$Graph_ql_stream_cursor_value_input<TRes> get initial_value;
}

class _CopyWithImpl$Input$Graph_ql_stream_cursor_input<TRes>
    implements CopyWith$Input$Graph_ql_stream_cursor_input<TRes> {
  _CopyWithImpl$Input$Graph_ql_stream_cursor_input(
    this._instance,
    this._then,
  );

  final Input$Graph_ql_stream_cursor_input _instance;

  final TRes Function(Input$Graph_ql_stream_cursor_input) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? initial_value = _undefined,
    Object? ordering = _undefined,
  }) =>
      _then(Input$Graph_ql_stream_cursor_input._({
        ..._instance._$data,
        if (initial_value != _undefined && initial_value != null)
          'initial_value':
              (initial_value as Input$Graph_ql_stream_cursor_value_input),
        if (ordering != _undefined)
          'ordering': (ordering as Enum$cursor_ordering?),
      }));

  CopyWith$Input$Graph_ql_stream_cursor_value_input<TRes> get initial_value {
    final local$initial_value = _instance.initial_value;
    return CopyWith$Input$Graph_ql_stream_cursor_value_input(
        local$initial_value, (e) => call(initial_value: e));
  }
}

class _CopyWithStubImpl$Input$Graph_ql_stream_cursor_input<TRes>
    implements CopyWith$Input$Graph_ql_stream_cursor_input<TRes> {
  _CopyWithStubImpl$Input$Graph_ql_stream_cursor_input(this._res);

  TRes _res;

  call({
    Input$Graph_ql_stream_cursor_value_input? initial_value,
    Enum$cursor_ordering? ordering,
  }) =>
      _res;

  CopyWith$Input$Graph_ql_stream_cursor_value_input<TRes> get initial_value =>
      CopyWith$Input$Graph_ql_stream_cursor_value_input.stub(_res);
}

class Input$Graph_ql_inc_input {
  factory Input$Graph_ql_inc_input({int? id}) => Input$Graph_ql_inc_input._({
        if (id != null) r'id': id,
      });

  Input$Graph_ql_inc_input._(this._$data);

  factory Input$Graph_ql_inc_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    return Input$Graph_ql_inc_input._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    return result$data;
  }

  CopyWith$Input$Graph_ql_inc_input<Input$Graph_ql_inc_input> get copyWith =>
      CopyWith$Input$Graph_ql_inc_input(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Graph_ql_inc_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([_$data.containsKey('id') ? l$id : const {}]);
  }
}

abstract class CopyWith$Input$Graph_ql_inc_input<TRes> {
  factory CopyWith$Input$Graph_ql_inc_input(
    Input$Graph_ql_inc_input instance,
    TRes Function(Input$Graph_ql_inc_input) then,
  ) = _CopyWithImpl$Input$Graph_ql_inc_input;

  factory CopyWith$Input$Graph_ql_inc_input.stub(TRes res) =
      _CopyWithStubImpl$Input$Graph_ql_inc_input;

  TRes call({int? id});
}

class _CopyWithImpl$Input$Graph_ql_inc_input<TRes>
    implements CopyWith$Input$Graph_ql_inc_input<TRes> {
  _CopyWithImpl$Input$Graph_ql_inc_input(
    this._instance,
    this._then,
  );

  final Input$Graph_ql_inc_input _instance;

  final TRes Function(Input$Graph_ql_inc_input) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Input$Graph_ql_inc_input._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
      }));
}

class _CopyWithStubImpl$Input$Graph_ql_inc_input<TRes>
    implements CopyWith$Input$Graph_ql_inc_input<TRes> {
  _CopyWithStubImpl$Input$Graph_ql_inc_input(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Input$Graph_ql_insert_input {
  factory Input$Graph_ql_insert_input({
    int? id,
    String? name,
  }) =>
      Input$Graph_ql_insert_input._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input$Graph_ql_insert_input._(this._$data);

  factory Input$Graph_ql_insert_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input$Graph_ql_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Input$Graph_ql_insert_input<Input$Graph_ql_insert_input>
      get copyWith => CopyWith$Input$Graph_ql_insert_input(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Graph_ql_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Input$Graph_ql_insert_input<TRes> {
  factory CopyWith$Input$Graph_ql_insert_input(
    Input$Graph_ql_insert_input instance,
    TRes Function(Input$Graph_ql_insert_input) then,
  ) = _CopyWithImpl$Input$Graph_ql_insert_input;

  factory CopyWith$Input$Graph_ql_insert_input.stub(TRes res) =
      _CopyWithStubImpl$Input$Graph_ql_insert_input;

  TRes call({
    int? id,
    String? name,
  });
}

class _CopyWithImpl$Input$Graph_ql_insert_input<TRes>
    implements CopyWith$Input$Graph_ql_insert_input<TRes> {
  _CopyWithImpl$Input$Graph_ql_insert_input(
    this._instance,
    this._then,
  );

  final Input$Graph_ql_insert_input _instance;

  final TRes Function(Input$Graph_ql_insert_input) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$Graph_ql_insert_input._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Input$Graph_ql_insert_input<TRes>
    implements CopyWith$Input$Graph_ql_insert_input<TRes> {
  _CopyWithStubImpl$Input$Graph_ql_insert_input(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
  }) =>
      _res;
}

class Input$Graph_ql_set_input {
  factory Input$Graph_ql_set_input({
    int? id,
    String? name,
  }) =>
      Input$Graph_ql_set_input._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
      });

  Input$Graph_ql_set_input._(this._$data);

  factory Input$Graph_ql_set_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as int?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    return Input$Graph_ql_set_input._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get id => (_$data['id'] as int?);

  String? get name => (_$data['name'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    return result$data;
  }

  CopyWith$Input$Graph_ql_set_input<Input$Graph_ql_set_input> get copyWith =>
      CopyWith$Input$Graph_ql_set_input(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Graph_ql_set_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
    ]);
  }
}

abstract class CopyWith$Input$Graph_ql_set_input<TRes> {
  factory CopyWith$Input$Graph_ql_set_input(
    Input$Graph_ql_set_input instance,
    TRes Function(Input$Graph_ql_set_input) then,
  ) = _CopyWithImpl$Input$Graph_ql_set_input;

  factory CopyWith$Input$Graph_ql_set_input.stub(TRes res) =
      _CopyWithStubImpl$Input$Graph_ql_set_input;

  TRes call({
    int? id,
    String? name,
  });
}

class _CopyWithImpl$Input$Graph_ql_set_input<TRes>
    implements CopyWith$Input$Graph_ql_set_input<TRes> {
  _CopyWithImpl$Input$Graph_ql_set_input(
    this._instance,
    this._then,
  );

  final Input$Graph_ql_set_input _instance;

  final TRes Function(Input$Graph_ql_set_input) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
  }) =>
      _then(Input$Graph_ql_set_input._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as int?),
        if (name != _undefined) 'name': (name as String?),
      }));
}

class _CopyWithStubImpl$Input$Graph_ql_set_input<TRes>
    implements CopyWith$Input$Graph_ql_set_input<TRes> {
  _CopyWithStubImpl$Input$Graph_ql_set_input(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
  }) =>
      _res;
}

class Input$Graph_ql_on_conflict {
  factory Input$Graph_ql_on_conflict({
    required Enum$Graph_ql_constraint constraint,
    List<Enum$Graph_ql_update_column>? update_columns,
    Input$Graph_ql_bool_exp? where,
  }) =>
      Input$Graph_ql_on_conflict._({
        r'constraint': constraint,
        if (update_columns != null) r'update_columns': update_columns,
        if (where != null) r'where': where,
      });

  Input$Graph_ql_on_conflict._(this._$data);

  factory Input$Graph_ql_on_conflict.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$constraint = data['constraint'];
    result$data['constraint'] =
        fromJson$Enum$Graph_ql_constraint((l$constraint as String));
    if (data.containsKey('update_columns')) {
      final l$update_columns = data['update_columns'];
      result$data['update_columns'] = (l$update_columns as List<dynamic>)
          .map((e) => fromJson$Enum$Graph_ql_update_column((e as String)))
          .toList();
    }
    if (data.containsKey('where')) {
      final l$where = data['where'];
      result$data['where'] = l$where == null
          ? null
          : Input$Graph_ql_bool_exp.fromJson((l$where as Map<String, dynamic>));
    }
    return Input$Graph_ql_on_conflict._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$Graph_ql_constraint get constraint =>
      (_$data['constraint'] as Enum$Graph_ql_constraint);

  List<Enum$Graph_ql_update_column>? get update_columns =>
      (_$data['update_columns'] as List<Enum$Graph_ql_update_column>?);

  Input$Graph_ql_bool_exp? get where =>
      (_$data['where'] as Input$Graph_ql_bool_exp?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$constraint = constraint;
    result$data['constraint'] = toJson$Enum$Graph_ql_constraint(l$constraint);
    if (_$data.containsKey('update_columns')) {
      final l$update_columns = update_columns;
      result$data['update_columns'] =
          (l$update_columns as List<Enum$Graph_ql_update_column>)
              .map((e) => toJson$Enum$Graph_ql_update_column(e))
              .toList();
    }
    if (_$data.containsKey('where')) {
      final l$where = where;
      result$data['where'] = l$where?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$Graph_ql_on_conflict<Input$Graph_ql_on_conflict>
      get copyWith => CopyWith$Input$Graph_ql_on_conflict(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Graph_ql_on_conflict) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$constraint = constraint;
    final lOther$constraint = other.constraint;
    if (l$constraint != lOther$constraint) {
      return false;
    }
    final l$update_columns = update_columns;
    final lOther$update_columns = other.update_columns;
    if (_$data.containsKey('update_columns') !=
        other._$data.containsKey('update_columns')) {
      return false;
    }
    if (l$update_columns != null && lOther$update_columns != null) {
      if (l$update_columns.length != lOther$update_columns.length) {
        return false;
      }
      for (int i = 0; i < l$update_columns.length; i++) {
        final l$update_columns$entry = l$update_columns[i];
        final lOther$update_columns$entry = lOther$update_columns[i];
        if (l$update_columns$entry != lOther$update_columns$entry) {
          return false;
        }
      }
    } else if (l$update_columns != lOther$update_columns) {
      return false;
    }
    final l$where = where;
    final lOther$where = other.where;
    if (_$data.containsKey('where') != other._$data.containsKey('where')) {
      return false;
    }
    if (l$where != lOther$where) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$constraint = constraint;
    final l$update_columns = update_columns;
    final l$where = where;
    return Object.hashAll([
      l$constraint,
      _$data.containsKey('update_columns')
          ? l$update_columns == null
              ? null
              : Object.hashAll(l$update_columns.map((v) => v))
          : const {},
      _$data.containsKey('where') ? l$where : const {},
    ]);
  }
}

abstract class CopyWith$Input$Graph_ql_on_conflict<TRes> {
  factory CopyWith$Input$Graph_ql_on_conflict(
    Input$Graph_ql_on_conflict instance,
    TRes Function(Input$Graph_ql_on_conflict) then,
  ) = _CopyWithImpl$Input$Graph_ql_on_conflict;

  factory CopyWith$Input$Graph_ql_on_conflict.stub(TRes res) =
      _CopyWithStubImpl$Input$Graph_ql_on_conflict;

  TRes call({
    Enum$Graph_ql_constraint? constraint,
    List<Enum$Graph_ql_update_column>? update_columns,
    Input$Graph_ql_bool_exp? where,
  });
  CopyWith$Input$Graph_ql_bool_exp<TRes> get where;
}

class _CopyWithImpl$Input$Graph_ql_on_conflict<TRes>
    implements CopyWith$Input$Graph_ql_on_conflict<TRes> {
  _CopyWithImpl$Input$Graph_ql_on_conflict(
    this._instance,
    this._then,
  );

  final Input$Graph_ql_on_conflict _instance;

  final TRes Function(Input$Graph_ql_on_conflict) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? constraint = _undefined,
    Object? update_columns = _undefined,
    Object? where = _undefined,
  }) =>
      _then(Input$Graph_ql_on_conflict._({
        ..._instance._$data,
        if (constraint != _undefined && constraint != null)
          'constraint': (constraint as Enum$Graph_ql_constraint),
        if (update_columns != _undefined && update_columns != null)
          'update_columns':
              (update_columns as List<Enum$Graph_ql_update_column>),
        if (where != _undefined) 'where': (where as Input$Graph_ql_bool_exp?),
      }));

  CopyWith$Input$Graph_ql_bool_exp<TRes> get where {
    final local$where = _instance.where;
    return local$where == null
        ? CopyWith$Input$Graph_ql_bool_exp.stub(_then(_instance))
        : CopyWith$Input$Graph_ql_bool_exp(local$where, (e) => call(where: e));
  }
}

class _CopyWithStubImpl$Input$Graph_ql_on_conflict<TRes>
    implements CopyWith$Input$Graph_ql_on_conflict<TRes> {
  _CopyWithStubImpl$Input$Graph_ql_on_conflict(this._res);

  TRes _res;

  call({
    Enum$Graph_ql_constraint? constraint,
    List<Enum$Graph_ql_update_column>? update_columns,
    Input$Graph_ql_bool_exp? where,
  }) =>
      _res;

  CopyWith$Input$Graph_ql_bool_exp<TRes> get where =>
      CopyWith$Input$Graph_ql_bool_exp.stub(_res);
}

class Input$Graph_ql_pk_columns_input {
  factory Input$Graph_ql_pk_columns_input({required int id}) =>
      Input$Graph_ql_pk_columns_input._({
        r'id': id,
      });

  Input$Graph_ql_pk_columns_input._(this._$data);

  factory Input$Graph_ql_pk_columns_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$Graph_ql_pk_columns_input._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$Graph_ql_pk_columns_input<Input$Graph_ql_pk_columns_input>
      get copyWith => CopyWith$Input$Graph_ql_pk_columns_input(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$Graph_ql_pk_columns_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$Graph_ql_pk_columns_input<TRes> {
  factory CopyWith$Input$Graph_ql_pk_columns_input(
    Input$Graph_ql_pk_columns_input instance,
    TRes Function(Input$Graph_ql_pk_columns_input) then,
  ) = _CopyWithImpl$Input$Graph_ql_pk_columns_input;

  factory CopyWith$Input$Graph_ql_pk_columns_input.stub(TRes res) =
      _CopyWithStubImpl$Input$Graph_ql_pk_columns_input;

  TRes call({int? id});
}

class _CopyWithImpl$Input$Graph_ql_pk_columns_input<TRes>
    implements CopyWith$Input$Graph_ql_pk_columns_input<TRes> {
  _CopyWithImpl$Input$Graph_ql_pk_columns_input(
    this._instance,
    this._then,
  );

  final Input$Graph_ql_pk_columns_input _instance;

  final TRes Function(Input$Graph_ql_pk_columns_input) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input$Graph_ql_pk_columns_input._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Input$Graph_ql_pk_columns_input<TRes>
    implements CopyWith$Input$Graph_ql_pk_columns_input<TRes> {
  _CopyWithStubImpl$Input$Graph_ql_pk_columns_input(this._res);

  TRes _res;

  call({int? id}) => _res;
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$order_by {
  asc_nulls_first,
  asc,
  asc_nulls_last,
  desc,
  desc_nulls_first,
  desc_nulls_last,
  $unknown
}

String toJson$Enum$order_by(Enum$order_by e) {
  switch (e) {
    case Enum$order_by.asc_nulls_first:
      return r'asc_nulls_first';
    case Enum$order_by.asc:
      return r'asc';
    case Enum$order_by.asc_nulls_last:
      return r'asc_nulls_last';
    case Enum$order_by.desc:
      return r'desc';
    case Enum$order_by.desc_nulls_first:
      return r'desc_nulls_first';
    case Enum$order_by.desc_nulls_last:
      return r'desc_nulls_last';
    case Enum$order_by.$unknown:
      return r'$unknown';
  }
}

Enum$order_by fromJson$Enum$order_by(String value) {
  switch (value) {
    case r'asc_nulls_first':
      return Enum$order_by.asc_nulls_first;
    case r'asc':
      return Enum$order_by.asc;
    case r'asc_nulls_last':
      return Enum$order_by.asc_nulls_last;
    case r'desc':
      return Enum$order_by.desc;
    case r'desc_nulls_first':
      return Enum$order_by.desc_nulls_first;
    case r'desc_nulls_last':
      return Enum$order_by.desc_nulls_last;
    default:
      return Enum$order_by.$unknown;
  }
}

enum Enum$cursor_ordering { ASC, DESC, $unknown }

String toJson$Enum$cursor_ordering(Enum$cursor_ordering e) {
  switch (e) {
    case Enum$cursor_ordering.ASC:
      return r'ASC';
    case Enum$cursor_ordering.DESC:
      return r'DESC';
    case Enum$cursor_ordering.$unknown:
      return r'$unknown';
  }
}

Enum$cursor_ordering fromJson$Enum$cursor_ordering(String value) {
  switch (value) {
    case r'ASC':
      return Enum$cursor_ordering.ASC;
    case r'DESC':
      return Enum$cursor_ordering.DESC;
    default:
      return Enum$cursor_ordering.$unknown;
  }
}

enum Enum$Graph_ql_select_column { id, name, $unknown }

String toJson$Enum$Graph_ql_select_column(Enum$Graph_ql_select_column e) {
  switch (e) {
    case Enum$Graph_ql_select_column.id:
      return r'id';
    case Enum$Graph_ql_select_column.name:
      return r'name';
    case Enum$Graph_ql_select_column.$unknown:
      return r'$unknown';
  }
}

Enum$Graph_ql_select_column fromJson$Enum$Graph_ql_select_column(String value) {
  switch (value) {
    case r'id':
      return Enum$Graph_ql_select_column.id;
    case r'name':
      return Enum$Graph_ql_select_column.name;
    default:
      return Enum$Graph_ql_select_column.$unknown;
  }
}

enum Enum$Graph_ql_constraint { Graph_ql_pkey, $unknown }

String toJson$Enum$Graph_ql_constraint(Enum$Graph_ql_constraint e) {
  switch (e) {
    case Enum$Graph_ql_constraint.Graph_ql_pkey:
      return r'Graph_ql_pkey';
    case Enum$Graph_ql_constraint.$unknown:
      return r'$unknown';
  }
}

Enum$Graph_ql_constraint fromJson$Enum$Graph_ql_constraint(String value) {
  switch (value) {
    case r'Graph_ql_pkey':
      return Enum$Graph_ql_constraint.Graph_ql_pkey;
    default:
      return Enum$Graph_ql_constraint.$unknown;
  }
}

enum Enum$Graph_ql_update_column { id, name, $unknown }

String toJson$Enum$Graph_ql_update_column(Enum$Graph_ql_update_column e) {
  switch (e) {
    case Enum$Graph_ql_update_column.id:
      return r'id';
    case Enum$Graph_ql_update_column.name:
      return r'name';
    case Enum$Graph_ql_update_column.$unknown:
      return r'$unknown';
  }
}

Enum$Graph_ql_update_column fromJson$Enum$Graph_ql_update_column(String value) {
  switch (value) {
    case r'id':
      return Enum$Graph_ql_update_column.id;
    case r'name':
      return Enum$Graph_ql_update_column.name;
    default:
      return Enum$Graph_ql_update_column.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
