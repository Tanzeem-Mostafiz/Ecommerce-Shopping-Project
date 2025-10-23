# E-Commerce Management System

The **E-Commerce Management System** is a full-stack web application developed as part of an academic course project. It simulates an online marketplace, integrating both **user-side and administrative operations** through a **PHP–MySQL** architecture. The project demonstrates practical applications of database-driven web development, server-side scripting, and modular design principles.

---

## System Overview

### User Functionalities
- User registration and authentication  
- Product browsing, searching, and detailed viewing  
- Shopping cart management  
- Checkout summary and total cost display  

### Admin Functionalities
- Secure admin login  
- Add, update, and delete products and categories  
- Manage user accounts and monitor transactions  
- Maintain inventory data integrity  

---

## Technologies Used

| Layer | Technologies |
|-------|---------------|
| **Frontend** | HTML5, CSS3 |
| **Backend** | PHP (Procedural) |
| **Database** | MySQL |
| **Server Environment** | Apache (XAMPP) |

---

## Folder Structure
```bash
E-Commerce-System/
│
├── Admin_area/           # Admin dashboard and management modules
├── Database/             # SQL schema and data scripts
├── IMAGES/               # Product and UI images
├── functions/            # Core reusable PHP functions
├── includes/             # Header, footer, and common components
├── users_area/           # User interfaces (login, register, profile)
│
├── cart.php              # Shopping cart functionality
├── display_all.php       # Product listing page
├── index.php             # Home page
├── product_details.php   # Product details and add-to-cart page
├── search_product.php    # Search module
├── style.css             # Application styling
└── README.md             # Documentation
```

---

## Installation
1. Clone the repository
```bash
git clone https://github.com/your-username/ecommerce-management-system
```
2. Move the folder to your XAMPP htdocs directory
```bash
C:\xampp\htdocs\E-Commerce-System
```
3. Database Setup
  - Open phpMyAdmin
  - Create a new database (e.g., ecommerce_db)
  - Import the SQL file from /Database/project.sql
4. Run the project
  - Start Apache and MySQL in XAMPP
  - Open in browser:
```bash
[git clone https://github.com/your-username/ecommerce-management-system](http://localhost/E-Commerce-System/)
```


