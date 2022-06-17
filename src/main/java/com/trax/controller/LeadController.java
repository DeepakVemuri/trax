package com.trax.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.trax.entities.Lead;
import com.trax.services.LeadService;

@Controller
public class LeadController {

	@Autowired
	private LeadService leadService;
	
	@RequestMapping("/viewCreatedLeadPage")
	public String viewCreatedLeadPage() {
		return "view_lead_page";
	}
	
	@RequestMapping("/saveLead")
	public String saveLead(@ModelAttribute Lead lead,ModelMap model) {
		try {
			leadService.saveOneLead(lead);
			model.put("lead", lead);
		} catch (Exception e) {
			model.put("msg", "Email/Mobile already exists!");
			return "view_lead_page";
		}
		return "saved_lead_page";
	}
	
	@RequestMapping("/listAllLeads")
	public String listAllLeads(ModelMap model) {
		List<Lead> leads = leadService.getAllLeads();
		model.put("leads", leads);
		return "list_all_leads";
	}
	
	@RequestMapping("/leadInfo")
	public String leadInfo(@RequestParam("id") long id,ModelMap model) {
		Lead lead = leadService.findOneLeadById(id);
		model.put("lead", lead);
		return "saved_lead_page";
	}
}
