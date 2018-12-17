const Admin = require('../models/admin');

exports.getBooksByCategory = (req, res, next) => {
  console.log('Get Books by category');

  return Admin.getBooksByCategory(req.params.id)
    .then(([data]) => {
      return res.json({ data });
    })
    .catch();
};

exports.getBooksByAuthor = (req, res, next) => {
  return Admin.getBooksByAuthor(req.params.id)
    .then(([data]) => {
      console.log(data);
      return res.json({ data });
    })
    .catch();
};

exports.getCategories = (req, res, next) => {
  return Admin.getCategories()
    .then(([data]) => {
      const result = {};

      data.forEach(element => {
        if (!Array.isArray(result[element.categoryId])) {
          result[element.categoryId] = [];
        }
        result[element.categoryId].push({
          subCategoryId: element.subCategoryId,
          subCategoryName: element.subCategoryName
        });
      });

      data.forEach(element => {
        delete element.subCategoryId;
        delete element.subCategoryName;
        element.subCategories = result[element.categoryId];
      });

      return res.json({ data });
    })
    .catch();
};

exports.fetchUsers = (req, res, next) => {
  return Admin.fetchUsers()
    .then(([data]) => {
      console.log(data);
      return res.json({ data });
    })
    .catch();
};
exports.fetchAuthors = (req, res, next) => {
  console.log('Get authors');

  return Admin.getAuthors()
    .then(([data]) => {
      return res.json({ data });
    })
    .catch();
};

exports.getBorrowList = (req, res, next) => {
  console.log('Borrow Function Called');

  return Admin.getBorrowList()
    .then(([data]) => {
      data.forEach(el => {
        el.return_date = new Date(el.return_date).getTime();
        el.take_date = new Date(el.take_date).getTime();
        el.return_status = el.return_status === 0 ? false : true;
      });
      return res.json({ data });
    })
    .catch();
};

exports.getBlackList = (req, res, next) => {
  console.log('Entered black list');

  return Admin.getBlackList()
    .then(([data]) => {
      data.forEach(el => {
        el.endDate = new Date(el.endDate).getTime();
      });
      return res.json({ data });
    })
    .catch();
};

exports.takeBook = (req, res, next) => {
  console.log('Take Bokk');

  console.log(req.body);

  return Admin.takeBook(req.body.userId, req.body.bookId)
    .then(([data]) => {
      return res.json({ msg: 'Success!' });
    })
    .catch();
};

exports.setReturnStatus = (req, res, next) => {
  return Admin.setReturnStatus(req.body.userId, req.body.bookId)
    .then(([data]) => {
      return res.json({ msg: 'Success!' });
    })
    .catch();
};
