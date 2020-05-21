<?php

class DashboardModel extends CI_Model 
{
    public function getAllDoctorCount()
    {
        $this->db->select('*');
        $this->db->from('post');
        return $this->db->get()->num_rows();
    }

    public function getAllDoctor()
    {
        $this->db->select('Doctors.id,Doctors.education,Doctors.image,CONCAT(Doctors.first_name," ",Doctors.last_name) as Doctor_name');
        $this->db->from('Doctors');
        return $this->db->get()->result();
    }


    public function getLatestAppoinment()
    {
        $this->db->select("Appointment.*,user.email,user.phone_number,user.disease,user.id,CONCAT(user.first_name, ' ',user.last_name) AS Patient_name ,user.image as Patient_image,CONCAT(Doctors.first_name, ' ',Doctors.last_name) AS Doctor_name");
        $this->db->from('Appointment');
        $this->db->join('user','Appointment.patient_id=user.id','left');
        $this->db->join('Doctors','Appointment.doctor_id=Doctors.id');

        $this->db->where('Appointment.status',0);
        $this->db->order_by('Appointment.appointment_id');
        return $this->db->get()->result();
    }

    public function getuser()
    {
        $this->db->select('user.email,user.phone_number,user.image,user.disease,CONCAT(first_name," ",last_name) as Patient_name');
        $this->db->from("user");
        $data = $this->db->get()->result();
        return $data;
        
    }


    public function getAllPatientsCount()
    {
        $this->db->select('*');
        $this->db->from('user');
        return $this->db->get()->num_rows();
    }

    public function approveAppointment($id)
    {
        $this->db->where('Appointment_id',$id);
        $this->db->update('Appointment',array('status'=>1));
        return true;
    }

    public function getAttendPatientCount()
    {
        $this->db->select("*");
        $this->db->from('Appointment');
        $this->db->where('Appointment.status',1);
        return $this->db->get()->num_rows();
    }

    public function getPendingPatientCount()
    {
        $this->db->select("*");
        $this->db->from('Appointment');
        $this->db->where('Appointment.status',0);
        return $this->db->get()->num_rows();
    }

    
}