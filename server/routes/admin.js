const express = require('express');

const adminController = require('../controllers/admin');

const router = express.Router();

router.get('/books/category/:id', adminController.getBooksByCategory);
router.get('/books/author/:id', adminController.getBooksByAuthor);
router.get('/authors', adminController.fetchAuthors);
router.get('/users', adminController.fetchUsers);
router.get('/categories', adminController.getCategories);
router.get('/black-list', adminController.getBlackList);
router.post('/take-book', adminController.takeBook);
router.put('/return', adminController.setReturnStatus);
router.get('/borrow', adminController.getBorrowList);

module.exports = router;
