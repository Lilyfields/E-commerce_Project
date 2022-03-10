// import models
const Product = require('./Product');
const Category = require('./Category');
const Tag = require('./Tag');
const ProductTag = require('./ProductTag');

// Products belongsTo Category
Product.belongsTo(Category, {
  foreignKey: 'catergory_id',

});

// Categories have many Products
Category.hasMany(Product, {
  foreignKey: 'catergory_id',
});

// Products belongToMany Tags (through ProductTag)
Tag.belongsTo(Product, {
  foreignKey: 'product_id',
});

// Tags belongToMany Products (through ProductTag)
Product.hasMany(Tag, {
foreignKey: 'product_id',
});

ProductTag.belongsTo(Tag, {
  foreignKey: 'tag_id',
});

Tag.hasMany(ProductTag, {
  foreignKey: 'tag_id',
});

module.exports = {
  Product,
  Category,
  Tag,
  ProductTag,
};
