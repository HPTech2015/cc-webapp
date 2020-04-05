package com.countrycapture.webapp.data.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.countrycapture.webapp.data.entity.Customer;

@Repository
public interface CustomerRepo extends CrudRepository<Customer, Long>{
	Customer findByUsername(String username);
}
