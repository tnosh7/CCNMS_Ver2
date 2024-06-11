package com.application.ccnms.contact.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.application.ccnms.contact.dao.ContactDAO;
import com.application.ccnms.contact.dto.ContactDTO;

@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactDAO contactDAO;
	
	@Transactional
	@Override
	public void addContact(ContactDTO contactDTO) throws Exception{
		contactDAO.insertContact(contactDTO);
	}
	
}
