const db = require('../util/database');

module.exports = class Admin {
  static getCategories() {
    return db.execute(`SELECT c.id as categoryId, c.name as categoryName, sc.id as subCategoryId, sc.name as subCategoryName
    FROM categories c , sub_categories sc
    WHERE c.id=sc.category_id`);
  }

  static getBooksByCategory(id) {
    return db.execute(`SELECT *
    FROM books b INNER JOIN authors a ON b.author_id=a.id
    WHERE b.sub_category=${id}`);
  }

  static getBooksByAuthor(id) {
    return db.execute(`SELECT *
    FROM books b INNER JOIN authors a ON b.author_id=a.id
    WHERE b.author_id=${id}`);
  }

  static getAuthors() {
    return db.execute(`SELECT * FROM authors`);
  }

  static fetchUsers() {
    return db.execute(`SELECT * FROM users`);
  }

  static getBlackList() {
    return db.execute(`SELECT b.user_id as id, u.name as name, u.email as email, b.end_date as endDate
    FROM users u INNER JOIN black_lists b ON u.id=b.user_id`);
  }

  static getBorrowList() {
    return db.execute(`SELECT * FROM borrows`);
  }

  static takeBook(userId, bookId) {
    console.log(userId);
    console.log(bookId);
    
    return db.execute(
      `INSERT INTO borrows (user_id, book_id,take_date,return_date)
       VALUES (${userId}, ${bookId}, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 30 DAY) )`
    );
  }

  static setReturnStatus(userId, bookId) {
    console.log('Change status');
    
    return db.query(
      `UPDATE borrows 
       SET return_status = ?
       WHERE user_id = ? AND book_id = ?`,
      [true, userId, bookId]
    );
  }

};
