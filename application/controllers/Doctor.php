<?php

class Doctor extends CI_Controller {
    public function __construct()
    {
        parent::__construct();
       
         if(!$this->login->isLoggedIn())
         {
            redirect('AdminLogin');
         }
    }
       
    
    public function index()
    {
        $data['doctors'] = $this->DoctorModel->getAllDocters();
        
        $this->load->view('common/header');
        $this->load->view('common/sidebar');
        $this->load->view('doctor/doctor_list',$data);
        $this->load->view('common/footer');   
    }

    public function add_doctors()
    {   
        $d = $this->input->post();
                    
        if(!empty($this->input->post()))
        {

            $this->load->library('form_validation');
            $this->form_validation->set_rules('title', 'Post Title', 'required');
            //$this->form_validation->set_rules('description', 'Post Description', 'required');
           
            $this->form_validation->set_error_delimiters('<div class="alert alert-danger">','</div>');
            if ($this->form_validation->run() == TRUE)
            {

                $config['upload_path'] = './uploads/doctor_profiles';
                $config['allowed_types'] = 'gif|jpg|png|jpeg';
                $config['max_size'] = 2000;
                $config['max_width'] = 4500;
                $config['max_height'] = 4500;
       


                $this->load->library('upload', $config);
        
                if (!$this->upload->do_upload('profile_image')) 
                {
                   $error = array('error' => $this->upload->display_errors());
                   $image = '';
            
           
                 } 
                 else 
                 {
                   $image = $this->upload->data()['file_name'];
                 }
                    
         
          $doctor_data = array('title'=>$d['title'],'description'=>$d['description'],'image'=>$image);
       
        if($this->DoctorModel->AddPost($doctor_data)){
            $this->session->set_flashdata('docter_add_result','Post Added Successfully');
        }
       
       else {
       
       }
       redirect('Doctor');
        
            }
            else {
              $data['department'] = $this->DoctorModel->departments();
                  $data['hospital'] = $this->DoctorModel->hospital_list();
                $this->load->view('common/header');
                $this->load->view('common/sidebar');
                $this->load->view('doctor/add_doctor',$data);
                $this->load->view('common/footer');  
            }
           
        }
        else {
         $data['department'] = $this->DoctorModel->departments();
         $data['hospital'] = $this->DoctorModel->hospital_list();
        $this->load->view('common/header');
        $this->load->view('common/sidebar');
        $this->load->view('doctor/add_doctor',$data);
        $this->load->view('common/footer');  
    }
    }

    public function edit_doctors(){
        if(!empty($this->input->post())){
            
             $d = $this->input->post();
             $id = $this->uri->segment(3);
             
             $config['upload_path'] = './uploads/doctor_profiles';
             $config['allowed_types'] = 'gif|jpg|png|jpeg';
             $config['max_size'] = 2000;
             $config['max_width'] = 4500;
             $config['max_height'] = 4500;
    

          

            $this->load->library('upload', $config);
            
            if (!$this->upload->do_upload('image')) {
                $error = array('error' => $this->upload->display_errors());
                $image = '';
                
                
            } else {
                $image = $this->upload->data()['file_name'];
                $d['image'] = $image;
            }
            
         

            // $doctor_update_data = array('first_name'=>$d['first_name'],'last_name'=>$d['last_name'],'username'=>$d['username'],'email'=>$d['email'],'dob'=>$d['dob'],'address'=>$d['address'],'Country'=>$d['country'],'city'=>$d['city'],'state'=>$d['state'],'postal_code'=>$d['state'],'phone_number'=>$d['phone_number'],'image'=>$image,'biography'=>$d['biography'],'status'=>$d['status'],'profession'=>$d['pro']);
            
            if($this->DoctorModel->updateDocter($d,$id)){
              redirect('Doctor');
            }
           



        }
        else {
        $doctor_id = $this->uri->segment(3);
        $data['Doctor_data'] = $this->DoctorModel->getDocterById($doctor_id);
        $data['department'] = $this->DoctorModel->departments();
         $data['hospital'] = $this->DoctorModel->hospital_list();
        $this->load->view('common/header');
        $this->load->view('common/sidebar');
        $this->load->view('doctor/edit_doctor',$data);
        $this->load->view('common/footer');  
        }
    }
    
    public function doctors_profile(){
        $doctor_id = $this->uri->segment(3);
        $data['Doctor_profile'] = $this->DoctorModel->getDocterById($doctor_id);
        
        $this->load->view('common/header');
        $this->load->view('common/sidebar');
        $this->load->view('doctor/doctor_profile',$data);
        $this->load->view('common/footer');  
    }

    public function delete_doctors(){
        $id = $this->uri->segment(3);
        $data['Doctor_data'] = $this->DoctorModel->deleteDocterById($id);
        redirect('Doctor');
    }

    public function CheckEmail(){
        $email = $this->input->post('email');
        if($this->DoctorModel->isEmailAvailable($email)){
           echo TRUE;
        }
        else {
           echo FALSE;
        }
    }
}