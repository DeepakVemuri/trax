package com.trax.services;

import java.util.List;

import com.trax.entities.Lead;

public interface LeadService {

	public void saveOneLead(Lead lead);
	
	public Lead findOneLeadById(long id);

	public void deleteOneLeadById(long id);

	public List<Lead> getAllLeads();
}
