const inquirer = require('inquirer');
const mysql = require('mysql2/promise'); // Use a MySQL library

// Create a MySQL connection pool
const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',
  password: '863684',
  database: 'company_db',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0,
});

// Helper function to query the database
async function queryDatabase(sql, values) {
  const [rows, fields] = await pool.execute(sql, values);
  return rows;
}

// Function to display options and perform actions
async function mainMenu() {
  const choices = [
    'View all departments',
    'View all roles',
    'View all employees',
    'Add a department',
    'Add a role',
    'Add an employee',
    'Update an employee role',
  ];

  const { action } = await inquirer.prompt({
    type: 'list',
    name: 'action',
    message: 'What would you like to do?',
    choices: choices,
  });

  // Implement logic for each action using queries to the database
  if (action === 'View all departments') {
    // Query and display departments
    const departments = await queryDatabase('SELECT * FROM department');
    console.log(departments);
  } else if (action === 'View all roles') {
    // Query and display roles
    const roles = await queryDatabase('SELECT * FROM roles');
    console.log(roles);
  }
  // ... Implement other actions ...

  // Recursive call to go back to the main menu
  mainMenu();
}

// Start the application by calling the main menu function
mainMenu();
