const connection = require("./connection");

class DB {
   constructor(connection) {
      this.connection = connection;
    }
  
    findAllEmployees() {
        return this.connection.query(
          "SELECT employee.id, employee.first_name, employee.last_name, role.title, department.name AS department, role.salary");
        };

    createEmployee(employee) {
            return this.connection.query("INSERT INTO employee SET ?", employee);
          }
   
          removeEmployee(employeeId) {
            return this.connection.query(
              "DELETE FROM employee WHERE id = ?",
              employeeId
            );
        }
    
    findAllRoles() {
            return this.connection.query(
              "SELECT role.id, role.title, department.name AS department, role.salary FROM role LEFT JOIN department on role.department_id = department.id;"
            );
          }
    createRole(role) {
            return this.connection.query("INSERT INTO role SET ?", role);
          }

    removeRole(roleId) {
            return this.connection.query("DELETE FROM role WHERE id = ?", roleId);
          }

    createDepartment(department) {
            return this.connection.query("INSERT INTO department SET ?", department);
          }

          removeDepartment(departmentId) {
            return this.connection.query(
              "DELETE FROM department WHERE id = ?",
              departmentId
            );
          }
};