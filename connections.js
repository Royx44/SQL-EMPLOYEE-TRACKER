const connectionPool = require('./connections');

async function viewAllDepartments() {
  const connection = await connectionPool.getConnection();
  try {
    const [departments, fields] = await connection.execute('SELECT * FROM department');
    console.log(departments);
  } catch (error) {
    console.error('Error querying database:', error);
  } finally {
    // Release the connection back to the pool
    connection.release();
  }
}

// Call the function to view all departments
viewAllDepartments();
