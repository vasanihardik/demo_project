// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$AppDatabaseBuilder inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$AppDatabaseBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$AppDatabaseBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  ProductDao? _productDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `ProductsTable` (`id` INTEGER, `title` TEXT, `description` TEXT, `price` INTEGER, `discountPercentage` REAL, `rating` REAL, `stock` INTEGER, `brand` TEXT, `category` TEXT, `thumbnail` TEXT, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  ProductDao get productDao {
    return _productDaoInstance ??= _$ProductDao(database, changeListener);
  }
}

class _$ProductDao extends ProductDao {
  _$ProductDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database, changeListener),
        _productsTableInsertionAdapter = InsertionAdapter(
            database,
            'ProductsTable',
            (ProductsTable item) => <String, Object?>{
                  'id': item.id,
                  'title': item.title,
                  'description': item.description,
                  'price': item.price,
                  'discountPercentage': item.discountPercentage,
                  'rating': item.rating,
                  'stock': item.stock,
                  'brand': item.brand,
                  'category': item.category,
                  'thumbnail': item.thumbnail
                },
            changeListener);

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<ProductsTable> _productsTableInsertionAdapter;

  @override
  Future<List<ProductsTable>> findAllPeople() async {
    return _queryAdapter.queryList('SELECT * FROM ProductsTable',
        mapper: (Map<String, Object?> row) => ProductsTable(
            id: row['id'] as int?,
            title: row['title'] as String?,
            description: row['description'] as String?,
            price: row['price'] as int?,
            discountPercentage: row['discountPercentage'] as double?,
            rating: row['rating'] as double?,
            stock: row['stock'] as int?,
            brand: row['brand'] as String?,
            category: row['category'] as String?,
            thumbnail: row['thumbnail'] as String?));
  }

  @override
  Stream<List<String>> findAllPeopleName() {
    return _queryAdapter.queryListStream('SELECT name FROM ProductsTable',
        mapper: (Map<String, Object?> row) => row.values.first as String,
        queryableName: 'ProductsTable',
        isView: false);
  }

  @override
  Stream<ProductsTable?> findProductsById(int id) {
    return _queryAdapter.queryStream(
        'SELECT * FROM ProductsTable WHERE id = ?1',
        mapper: (Map<String, Object?> row) => ProductsTable(
            id: row['id'] as int?,
            title: row['title'] as String?,
            description: row['description'] as String?,
            price: row['price'] as int?,
            discountPercentage: row['discountPercentage'] as double?,
            rating: row['rating'] as double?,
            stock: row['stock'] as int?,
            brand: row['brand'] as String?,
            category: row['category'] as String?,
            thumbnail: row['thumbnail'] as String?),
        arguments: [id],
        queryableName: 'ProductsTable',
        isView: false);
  }

  @override
  Future<void> insertPerson(ProductsTable product) async {
    await _productsTableInsertionAdapter.insert(
        product, OnConflictStrategy.abort);
  }
}
