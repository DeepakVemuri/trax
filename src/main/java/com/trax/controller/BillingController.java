package com.trax.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.trax.entities.Billing;
import com.trax.entities.Contact;
import com.trax.services.BillingService;
import com.trax.services.ContactService;

@Controller
public class BillingController {

	@Autowired
	private ContactService contactService;
	
	@Autowired
	private BillingService billingService;
	
	@RequestMapping("/createBill")
	public String createBill(@RequestParam("bid") long bid,ModelMap model) {
		Contact contact = contactService.findContactById(bid);
		model.put("contact", contact);
		return "create_bill";
	}

	@RequestMapping("/generateBill")
	public String generateBill(@ModelAttribute Billing bill,ModelMap model) {
		billingService.saveBill(bill);
		model.put("bill", bill);
		return "generate_bill";
	}

}
