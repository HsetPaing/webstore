package com.webstore.domain.repository.impl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import com.webstore.domain.Customer;
import com.webstore.domain.repository.CustomerRepository;

/**
 * @author HsetPaing
 *
 */
@Repository
public class InMemoryCustomerRepository implements CustomerRepository {

	private List<Customer> listOfCustomers = new ArrayList<Customer>();

	public InMemoryCustomerRepository() {
		Customer hsetpaing = new Customer("C123", "Hset Paing", "Yangon");
		Customer yadanar = new Customer("C124", "Yadanar", "Mandalay");
		Customer MyatThwe = new Customer("C125", "Myat Thwe", "Bago");

		listOfCustomers.add(hsetpaing);
		listOfCustomers.add(yadanar);
		listOfCustomers.add(MyatThwe);
	}

	@Override
	public List<Customer> getAllCustomers() {
		// TODO Auto-generated method stub
		return listOfCustomers;
	}

}
