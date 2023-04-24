package employee.management.system.dao;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import employee.management.system.dto.Admin;
import employee.management.system.dto.Employee;
public class EmployeeDao {

	EntityManagerFactory managerFactory=Persistence.createEntityManagerFactory("sigma");
	EntityManager manager=managerFactory.createEntityManager();
	EntityTransaction transaction=manager.getTransaction();
	
	public void signUpEmployee(Employee employee)
	{
		transaction.begin();
		manager.persist(employee);
		transaction.commit();
		
	}
	public List<Employee> getAllEmployee(Admin admin){
		Query query = manager.createQuery("select s from Employee s where s.admin=?1");
		query.setParameter(1,admin);
		List employees = query.getResultList();
		return employees;
	}
	public Employee getEmployee(int employeeId)
	{
		return manager.find(Employee.class, employeeId);
	
	}
	public void updateEmployee(Employee employee)
	{
		transaction.begin();
		manager.merge(employee);
		transaction.commit();
		
	}
	public void deleteEmployee(int id) {
		transaction.begin();
		manager.remove(manager.find(Employee.class, id));
		transaction.commit();
	}
}
