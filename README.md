# E-Commerce Management System

The **E-Commerce Management System** is a full-stack web application developed as part of a university course group project. It simulates an online marketplace, integrating both **user-side and administrative operations** through a **PHP–MySQL** architecture. 
It provides a complete online shopping experience with features such as product listing, search, cart management, and admin control. The system is built using PHP, MySQL, HTML, CSS, and basic frontend components, following a structured modular design.

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
| **Frontend** | HTML5, CSS3, Bootstrap library |
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

---

## Developer
1. **Tanzeem Mostafiz** | Undergraduate Student, Department of Information and Communication Technology, Bangladesh University of Professionals (BUP)
2. **Aysha Siddika Prity** | Undergraduate Student, Department of Information and Communication Technology, Bangladesh University of Professionals (BUP)

---

## License

This project was developed solely for **academic and educational purposes** as part of a university course.  
You are free to view, reference, and modify the code for **learning or research use**, provided that proper credit is given to the original authors.

© 2023 **Tanzeem Mostafiz** & **Aysha Siddika Prity**. All rights reserved.

---

## Acknowledgment

This project was completed under the guidance and supervision of faculty members from the **Department of Information and Communication Technology**, **Bangladesh University of Professionals (BUP)**.  
We express our sincere gratitude for their valuable support and insights throughout the development process.
