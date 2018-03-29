package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.example.demo.dao.tintucRepository;
import com.example.demo.model.tintuc;

@Service
@Transactional
public class tintucService {
	private final tintucRepository tintucrepository;

	public tintucService(tintucRepository tintucrepository) {
		super();
		this.tintucrepository = tintucrepository;
	}
	
	public List<tintuc> findTinTucGanDay(){
		List<tintuc> tintucs = new ArrayList<tintuc>();
		
		for(tintuc i:tintucrepository.findAll())
			tintucs.add(i);
		
		List<tintuc> tintucganday = new ArrayList<tintuc>();
		try {
			tintucganday.add(tintucs.get(tintucs.size()-1));
			tintucganday.add(tintucs.get(tintucs.size()-2));
			tintucganday.add(tintucs.get(tintucs.size()-3));
		}catch(Exception e) {}
		
		return tintucganday;
	}
	
	public List<tintuc> findAll(){
		List<tintuc> tintucs = new ArrayList<tintuc>();
		List<tintuc> tintucs1 = new ArrayList<tintuc>();
		for(tintuc i:tintucrepository.findAll())
			tintucs.add(i);
		for(int i=tintucs.size()-1;i>=0;i--)
			tintucs1.add(tintucs.get(i));
		return tintucs1;
	}
	
	public tintuc findById(int id) {
		return tintucrepository.findById(id).get();
	}
	
	
	public List<tintuc> findAllPhuc(){
		List<tintuc> Conferences = new ArrayList<tintuc>();
		for(tintuc confer : tintucrepository.findAll()){
			Conferences.add(confer);
		}
		return Conferences;
	}
	public tintuc findConference(int id){
		return tintucrepository.findById(id).get();
	}
	public void Save(tintuc conference){
		tintucrepository.save(conference);
	}
	public void Delete(int ID){
		tintucrepository.deleteById(ID);
	}
}
