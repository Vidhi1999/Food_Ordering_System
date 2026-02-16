# 🍽️ Food Ordering System

A full-stack **Online Food Ordering Web Application** built using **PHP, MySQL, HTML, CSS, Bootstrap, and JavaScript**.

The system allows customers to browse restaurants, add food items to cart and place orders. It also includes a manager portal to manage restaurants, food items, and orders.

---

## 🚀 Features

### 👤 Customer Features

* Customer Registration & Login
* Browse food items
* Add items to cart
* Update cart / Remove items
* View order details
* Logout functionality

### 🧑‍💼 Manager Features

* Manager Registration & Login
* Add food items
* Edit food items
* Delete food items
* View restaurant food list
* View customer orders
* Update order status

---

## 🛠️ Tech Stack

* **Frontend:** HTML, CSS, Bootstrap, JavaScript
* **Backend:** PHP
* **Database:** MySQL
* **Styling:** Bootstrap & Custom CSS

---

## 📁 Project Structure

```
Food_Ordering_System/
│
├── index.php                     # Home page
├── customerlogin.php             # Customer login
├── customersignup.php            # Customer registration
├── managerlogin.php              # Manager login
├── managersignup.php             # Manager registration
│
├── cart.php                      # Shopping cart
├── payment.php                   # Payment page
├── COD.php                       # Cash on Delivery
├── onlinepay.php                 # Online payment
│
├── add_food_items.php            # Add food (manager)
├── edit_food_items.php           # Edit food
├── delete_food_items.php         # Delete food
├── view_food_items.php           # View food items
│
├── connection.php                # Database connection
│
├── Database/
│   └── foodexploria (1).sql      # Database file
│
├── css/                          # Stylesheets
├── js/                           # JavaScript files
├── images/                       # Image assets
└── fonts/                        # Bootstrap fonts
```

---

# ⚙️ Installation Guide

## Step 1: Install XAMPP / WAMP

Download and install:

* XAMPP (Recommended)
  [https://www.apachefriends.org/](https://www.apachefriends.org/)

---

## Step 2: Setup Project

1. Copy the `Food_Ordering_System` folder into:

```
C:\xampp\htdocs\
```

So the path becomes:

```
C:\xampp\htdocs\Food_Ordering_System
```

---

## Step 3: Start Apache & MySQL

Open XAMPP Control Panel and start:

* ✅ Apache
* ✅ MySQL

---

## Step 4: Import Database

1. Open browser

   ```
   http://localhost/phpmyadmin
   ```
2. Click **Import**
3. Select file:

   ```
   Database/foodexploria (1).sql
   ```
4. Click **Go**

---

## Step 5: Configure Database Connection

Open:

```
connection.php
```

Make sure credentials match your local setup:

```php
$conn = mysqli_connect("localhost", "root", "", "foodexploria");
```

(Default XAMPP settings usually work.)

---

## ▶️ Run the Project

Open browser:

```
http://localhost/Food_Ordering_System/index.php
```

---

# 🔐 Default User Flow

### 👤 Customer

1. Register
2. Login
3. Browse food
4. Add to cart
5. Checkout

### 🧑‍💼 Manager

1. Register as manager
2. Login
3. Add/Edit/Delete food items
4. View orders

---

# 📸 UI Components

* Bootstrap-based responsive design
* Image sliders
* Cart interface
* Order summary page

---

# 🧪 Requirements

* PHP 7.x or higher
* MySQL 5.x+
* Apache Server (XAMPP/WAMP)
* Web Browser

---

# 🛠 Future Improvements

* Add payment gateway integration (Stripe/PayPal)
* Add admin dashboard
* Improve security (prepared statements)
* Add email notifications
* Improve UI/UX design

---

# 📜 License

This project is developed for academic purposes and learning.