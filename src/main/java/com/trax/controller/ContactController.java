package com.trax.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.trax.entities.Contact;
import com.trax.entities.Lead;
import com.trax.services.ContactService;
import com.trax.services.LeadService;

@Controller
public class ContactController {

	@Autowired
	LeadService leadService;
	
	@Autowired
	ContactService contactService;
	
	@RequestMapping("/convertLead")
	public String convertLead(@RequestParam("id") long id,ModelMap model) {
		Lead lead = leadService.findOneLeadById(id);
		
		Contact contact = new Contact();
		contact.setFirstName(lead.getFirstName());
		contact.setLastName(lead.getLastName());
		contact.setLeadSource(lead.getLeadSource());
		contact.setEmail(lead.getEmail());
		contact.setMobile(lead.getMobile());
		contactService.saveOneContact(contact);
		
		leadService.deleteOneLeadById(id);
		
		List<Contact> contacts = contactService.getAllContacts();
		model.put("contacts", contacts);
		return "list_all_contacts";
	}
	
	@RequestMapping("/listAllContacts")
	public String listAllContacts(ModelMap model) {
		List<Contact> contacts = contactService.getAllContacts();
		model.put("contacts",contacts);
		return "list_all_contacts";
	}
	
	@RequestMapping("/contactInfo")
	public String contactInfo(@RequestParam("id") long id,ModelMap model) {
		Contact contact = contactService.findContactById(id);
		model.put("contact", contact);
		return "contact_info";
	}
}
