package com.webstore.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webstore.domain.Product;
import com.webstore.domain.repository.ProductRepository;
import com.webstore.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private ProductRepository productRepository;

	@Override
	public void processOrder(String productId, long quantity) {
		// TODO Auto-generated method stub
		Product productById = productRepository.getProductById(productId);

		if (productById.getUnitsInStock() < quantity) {
			throw new IllegalArgumentException(
					"Out of Stock. Avaliable Units in stock " + productById.getUnitsInStock());
		}

		productById.setUnitsInStock(productById.getUnitsInStock() - quantity);
	}

}
