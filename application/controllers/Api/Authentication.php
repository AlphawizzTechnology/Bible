<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

// Load the Rest Controller library
require APPPATH . '/libraries/REST_Controller.php';

class Authentication extends REST_Controller {

    public function __construct(){
        parent::__construct();
        // Load the user model
        $this->load->library('session');
        $this->load->model('Api/LoginApiModel');
        $this->load->model('Api/UserProfileModel');
        $this->load->model('Api/PostApiModel');
    }
    

    public function MasterTable_post(){
        $userId = $this->post('user_id');
        $userData = $this->LoginApiModel->getUserData($userId);
        $postData = $this->LoginApiModel->getPostData();
        $contentData = $this->LoginApiModel->getContentData($userId);
        $settingData = $this->LoginApiModel->getSettingData($userId);
        $bookData = $this->LoginApiModel->getBookmarkData($userId);
        $chapterData = $this->LoginApiModel->getChapterData($userId);
        $highlightsData = $this->LoginApiModel->gethighlightsData($userId);

        foreach ($postData as $value) {
             $postData['id'] = $value->id;
             $postData['title'] = $value->title;
             $postData['description'] = $value->description;
             $postData['image'] = $value->image;

             $postFinalData = array(array('id'=>$postData['id'],'title'=>$postData['title'],'description'=>'<p>'.$value->description.'</p><\n>','image'=>$postData['image']));
        }

        $data = array( 
            "User" => $userData, 
            "Post" => $postFinalData, 
            "Content" => $contentData, 
            "Setting" => $settingData, 
            "BookData" => $bookData,
            "Chapter" => $chapterData,
            "Highlights" => $highlightsData 
        );
         $this->response([
            'status' => TRUE,
            'message' => "Master table structure",
            'data' => $data
        ], REST_Controller::HTTP_OK);
    }
    public function loginOld_post(){        
        $email = $this->post('email');
        $password = $this->post('password');
        $phone_number = $this->post('phone_number');
        $login_type = $this->post('login_type');
        $firebase_token = $this->post('firebase_token');
        
        if((!empty($email)||!empty($phone_number)) && !empty($login_type))
        {
            if(!empty($phone_number))
            {
             $con = array('phone_number' => $phone_number,'password' => $password);
            }
            else 
            {
             $con = array('email' => $email,'password' => $password);
            }
             
             $user = $this->LoginApiModel->getRows($con,$login_type,$firebase_token);
             unset($user['data']->password);
             // unset($user['data']->username);
            if(!empty($user['data']))
            {
                     $this->response([
                    'status' => TRUE,
                    'message' => $user['message'],
                    'loggged_in_as'=>$user['logged_as'],
                    'data' => $user['data']
                ], REST_Controller::HTTP_OK);

            }
            else
            {
                // Set the response and exit
                //BAD_REQUEST (400) being the HTTP response code
                $this->response([
                    'status' => TRUE,
                    'message' => $user['message'],
                    
                ], REST_Controller::HTTP_BAD_REQUEST);
            }
        }else{
            // Set the response and exit
            $this->response([
            'status' => FALSE,
            'message' => "Provide email and password.",

            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }



    public function login_post(){  
        $email = $this->post('email');
        $password = $this->post('password');
        $social = $this->post('social');
        $phone_number = $this->post('phone_number');
        $login_type = "2";
        
        if((!empty($email)||!empty($phone_number)))
        {
            
             
            $user = $this->LoginApiModel->getRows($con,$login_type);
             // unset($user['data']->username);
            if(!empty($user['data']))
            {
                     $this->response([
                    'status' => TRUE,
                    'message' => $user['message'],
                    'data' => $user['data']
                ], REST_Controller::HTTP_OK);

            }

            else
            {
                // Set the response and exit
                //BAD_REQUEST (400) being the HTTP response code
                $this->response([
                    'status' => TRUE,
                    'message' => $user['message'],
                    
                ], REST_Controller::HTTP_BAD_REQUEST);
            }
        }
        else
        {
            // Set the response and exit
            $this->response([
                'status' => FALSE,
                'message' => "Provide email and password.",
               
            ], REST_Controller::HTTP_BAD_REQUEST);
        }
    }


    public function Logout_post(){  
        $user_id = $this->post('user_id');
        if($user_id){
            $this->response([
                'status' => TRUE,
                'message' => "logout sucessfully !!",
            ], REST_Controller::HTTP_OK);
        }else{
           $this->response([
                'status' => FALSE,
                'message' => "User not found.",               
            ], REST_Controller::HTTP_BAD_REQUEST); 
        }
    }

    public function generateOtp_post(){
        $phone_number = $this->post('phone');
        $forget_type  = 2;
        $user = $this->LoginApiModel->checkPhoneNumber($forget_type,$phone_number);
        if(!$user)
        {
            $this->response([
            'status' => FALSE,
            'message' => 'Phone number not Exist.',
           ], REST_Controller::HTTP_OK);    
        }
        else 
        {
            // $this->session->set_userdata('mob',$phone_number);
            $otp = rand(1000, 9999);
            $ch = curl_init(); 
            curl_setopt($ch, CURLOPT_URL, "http://trans.smsfresh.co/api/sendmsg.php?user=Live7update&pass=123456&sender=LIVUPD&phone=".$phone_number."&text=".$otp."&priority=ndnd&stype=normal"); 
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
            $output = curl_exec($ch); 
            curl_close($ch); 
            $array_data = array('otp'=>$otp,"Phone"=>$phone_number,"type"=>$forget_type);
            $this->LoginApiModel->UpdateOtp($array_data);
            $this->response([
            'status' => TRUE,
            'message' => 'Your Otp is Valid for 60 seconds',
            'otp' =>$otp,
            'phone_number'=>$phone_number,
           ], REST_Controller::HTTP_OK); 
        }
       
    }


    public function otpVarification_post(){        
        $otp1 = $this->post('otp');
        $phone_number = $this->post('phone');
        $forget_type  = 2;
        if($forget_type == 1){
            $table = 'Doctors';
          }
          else {
            $table = 'user';
          }
        
        $query = $this->db->query("SELECT * FROM $table where phone_number='".$phone_number."'");
        $row = $query->row();
        $session = $this->session->userdata('session_'.$otp1);

        if(!empty($row->otp))
        {
            
            if($forget_type==2){
                $query = $this->db->query("SELECT * FROM user where phone_number='".$phone_number."'");
                $row = $query->row();
                $data = array(
                "id"=> ($row->id)?$row->id:"",
                "first_name"=> ($row->first_name)?$row->first_name:"",
                "last_name"=> ($row->last_name)?$row->last_name:"",
                "username"=> ($row->username)?$row->username:"",
                "email"=> ($row->email)?$row->email:"",
                "password"=> ($row->password)?$row->password:"",
                "dob"=> ($row->dob)?$row->dob:"",
                "bio"=> ($row->bio)?$row->bio:"",
                "gender"=> ($row->gender)?$row->gender:"",
                "disease"=> ($row->disease)?$row->disease:"",
                "address"=> ($row->address)?$row->address:"",
                "Country"=> ($row->Country)?$row->Country:"",
                "city"=> ($row->city)?$row->city:"",
                "state"=> ($row->state)?$row->state:"",
                "postal_code"=> ($row->postal_code)?$row->postal_code:"",
                "phone_number"=> ($row->phone_number)?$row->phone_number:"",
                "image"=> ($row->image)?base_url().$row->image:"",
                "status"=> ($row->status)?$row->status:"",
                "Firebase_token"=> ($row->Firebase_token)?$row->Firebase_token:"",
                "otp"=> ($row->otp)?$row->otp:"",
                "social"=> ($row->social)?$row->social:"");
                $this->response([
                'status' => TRUE,
                'data'=>$data,
                'message' => 'Correct Otp1',
                ], REST_Controller::HTTP_OK); 
                $this->session->unset_userdata('session_'.$phone_number);
            }else if($forget_type==1){
               $query = $this->db->query("SELECT * FROM Doctors where phone_number='".$phone_number."'");
                $row = $query->row(); 
                $this->response([
                'status' => TRUE,
                'data'=>$row,
                'message' => 'Correct Otp',
                ], REST_Controller::HTTP_OK); 
                $this->session->unset_userdata('session_'.$phone_number);
            }else{
              $row = array();
              $this->response([
                'status' => TRUE,
                'data'=>$row,
                'message' => 'Correct Otp',
                ], REST_Controller::HTTP_OK); 
                $this->session->unset_userdata('session_'.$phone_number);
            }
            
        }
        else 
        {
            $this->response([
            'status' => FALSE,
            'message' => 'Otp Not Found',
            ], REST_Controller::HTTP_BAD_REQUEST); 
        }
    }

    public function changePassword_post()
    {
        $phone_number = $this->post('phone_number');
        $user_type = 2;
        $new_password = $this->post('password');

        if($this->LoginApiModel->changePassword($phone_number,$new_password,$user_type))
        {
            $this->response([
            'status' => TRUE,
            'message' => 'Password Changed',
            ], REST_Controller::HTTP_OK); 
        }
        else 
        {
            $this->response([
            'status' => FALSE,
            'message' => 'Unknown Phone Number',
            ], REST_Controller::HTTP_OK);
        }

    }


    public function SocialLogin_post(){
        $first_name = strip_tags($this->post('name'));
        $email = strip_tags($this->post('email'));
        $social = strip_tags($this->post('social'));
        $facebookID = strip_tags($this->post('facebookID'));
        if(!empty($social))
        {

            $userData = array(
            'first_name' => $first_name,
            'email' => ($email)?$email:"",
            'social' => ($social)?$social:"",
            'facebookID'=>($facebookID)?$facebookID:""
            );  

            
            if($this->LoginApiModel->checkEmail($userData['email'],1,$social,$facebookID))
            {
                $query = $this->db->query("SELECT * FROM user where email='".$email."'");
                $row = $query->row();
                $data = array(
                "id"=> ($row->id)?$row->id:"",
                "first_name"=> ($row->first_name)?$row->first_name:"",
                "last_name"=> ($row->last_name)?$row->last_name:"",
                "username"=> ($row->username)?$row->username:"",
                "email"=> ($row->email)?$row->email:"",
                "password"=> ($row->password)?$row->password:"",
                "dob"=> ($row->dob)?$row->dob:"",
                "bio"=> ($row->bio)?$row->bio:"",
                "gender"=> ($row->gender)?$row->gender:"",
                "disease"=> ($row->disease)?$row->disease:"",
                "address"=> ($row->address)?$row->address:"",
                "Country"=> ($row->Country)?$row->Country:"",
                "city"=> ($row->city)?$row->city:"",
                "state"=> ($row->state)?$row->state:"",
                "postal_code"=> ($row->postal_code)?$row->postal_code:"",
                "phone_number"=> ($row->phone_number)?$row->phone_number:"",
                "image"=> ($row->image)?base_url().$row->image:"",
                "status"=> ($row->status)?$row->status:"",
                "Firebase_token"=> ($row->Firebase_token)?$row->Firebase_token:"",
                "otp"=> ($row->otp)?$row->otp:"",
                "social"=> ($row->social)?$row->social:"");
                $this->response([
                'status' => TRUE,
                'data'=>$data,
                'message' => 'login successfully.',
                ], REST_Controller::HTTP_OK); 
            }

            else 
            {
                $forget_type = 2;
                $insert = $this->LoginApiModel->insert_patient($userData);
               $query = $this->db->query("SELECT * FROM user where facebookID='".$facebookID."'");
                $row = $query->row();
                $data = array(
                "id"=> ($row->id)?$row->id:"",
                "first_name"=> ($row->first_name)?$row->first_name:"",
                "last_name"=> ($row->last_name)?$row->last_name:"",
                "username"=> ($row->username)?$row->username:"",
                "email"=> ($row->email)?$row->email:"",
                "password"=> ($row->password)?$row->password:"",
                "dob"=> ($row->dob)?$row->dob:"",
                "bio"=> ($row->bio)?$row->bio:"",
                "gender"=> ($row->gender)?$row->gender:"",
                "disease"=> ($row->disease)?$row->disease:"",
                "address"=> ($row->address)?$row->address:"",
                "Country"=> ($row->Country)?$row->Country:"",
                "city"=> ($row->city)?$row->city:"",
                "state"=> ($row->state)?$row->state:"",
                "postal_code"=> ($row->postal_code)?$row->postal_code:"",
                "phone_number"=> ($row->phone_number)?$row->phone_number:"",
                "image"=> ($row->image)?base_url().$row->image:"",
                "status"=> ($row->status)?$row->status:"",
                "Firebase_token"=> ($row->Firebase_token)?$row->Firebase_token:"",
                "otp"=> ($row->otp)?$row->otp:"",
                "social"=> ($row->social)?$row->social:"");
                if(!$insert['status'])
                {
                    $this->response([
                    'status' => TRUE,
                    'message' => 'Login successfully ',
                    'data'=>$data,
                    ], REST_Controller::HTTP_OK);
                }
                else
                {
                    $this->response([
                    'status' => FALSE,
                    'message' => 'Unable to add',
                    ], REST_Controller::HTTP_BAD_REQUEST);
                }
            }  

        }
        else 
        {
        $this->response([
        'status' => FALSE,
        'message' => 'Provide proper information ',
        ], REST_Controller::HTTP_OK);
        }

    }
   


  
    public function registration_post(){                      
        $first_name = strip_tags($this->post('first_name'));
        $last_name = strip_tags($this->post('last_name'));
        $email = strip_tags($this->post('email'));
        $password = strip_tags($this->post('password'));
        $dob = strip_tags($this->post('dob'));
        $gender = strip_tags($this->post('gender'));
        $boi = strip_tags($this->post('boi'));
        $address = strip_tags($this->post('address'));
        $phone_number = strip_tags($this->post('phone_number'));

        // $status = strip_tags($this->post('status'));
        if(!empty($phone_number))
        {

            $userData = array(
            'first_name' => $first_name,
            'last_name' => ($last_name)?$last_name:"",
            'email' => ($email)?$email:"",
            'password' => ($password)?$password:"",
            'dob' =>($dob)?$dob:"",
            'gender'=>($gender)?$gender:"",
            'address' =>($address)?$address:"",
            'phone_number'=>($phone_number)?$phone_number:"",
            'bio'=>($boi)?$boi:"",
            );  

          
            
            if($this->LoginApiModel->checkContact($userData['phone_number'],1))
            {
                $this->response([
                'status' => TRUE,
                'message' => 'Phone number is already exist ',
                ], REST_Controller::HTTP_OK); 
            }

            else 
            {
            	$forget_type = 2;
                $insert = $this->LoginApiModel->insert_patient($userData);
                $otp = rand(1000, 9999);
	            $ch = curl_init(); 
	            curl_setopt($ch, CURLOPT_URL, "http://trans.smsfresh.co/api/sendmsg.php?user=Live7update&pass=123456&sender=LIVUPD&phone=".$phone_number."&text=".$otp."&priority=ndnd&stype=normal"); 
	            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); 
	            $output = curl_exec($ch); 
	            curl_close($ch); 
	            $array_data = array('otp'=>$otp,"Phone"=>$phone_number,"type"=>$forget_type);
	            $this->LoginApiModel->UpdateOtp($array_data);
                if(!$insert['status'])
                {
                    $this->response([
                    'status' => TRUE,
                    'message' => 'User added successfully ',
                    'otp' =>$otp,
                    ], REST_Controller::HTTP_OK);
                }
                else
                {
                    $this->response([
                    'status' => FALSE,
                    'message' => 'Unable to add',
                    ], REST_Controller::HTTP_BAD_REQUEST);
                }
            }  

        }
        else 
        {
        $this->response([
        'status' => FALSE,
        'message' => 'Provide proper information ',
        ], REST_Controller::HTTP_OK);
        }       
    }

                
  
    public function doctor_registration_post()
    {
        $username = strip_tags($this->post('username'));
        $email = strip_tags($this->post('email'));
        $password = strip_tags($this->post('password'));
        $dob = strip_tags($this->post('dob'));
        $gender = strip_tags($this->post('gender'));
        $address = strip_tags($this->post('address'));
        $phone_number = strip_tags($this->post('phone_number'));
        $full_name = explode(' ',$username);
        $first_name='';
        $last_name='';
        empty($full_name[0])?$first_name='':$first_name=$full_name[0];
        empty($full_name[1])?$last_name='':$last_name=$full_name[1];

        if(!empty($username) && !empty($email) && !empty($password) && !empty($gender) && !empty($address) && !empty($phone_number))
        {

            $userData = array(
            'first_name' => $first_name,
            'last_name' => $last_name,
            'email' => $email,
            'password' => $password,
            'dob' =>$dob,
            'gender'=>$gender,
            'address' =>$address,
            'phone_number'=>$phone_number,
            );  

            if($this->LoginApiModel->checkEmail($userData['email'],2))
            {
                $this->response([
                'status' => FALSE,
                'message' => 'Email is already exist ',
                ], REST_Controller::HTTP_OK);
            }
            else if($this->LoginApiModel->checkContact($userData['phone_number'],2))
            {
                $this->response([
                'status' => TRUE,
                'message' => 'phone number is already exist ',
                ], REST_Controller::HTTP_OK); 
            }

            else 
            {
                $insert = $this->LoginApiModel->insert_doctor($userData);
                if(!$insert['status'])
                {
                    $this->response([
                    'status' => TRUE,
                    'message' => 'User added successfully ',
                    ], REST_Controller::HTTP_OK);
                }
                else
                {
                    $this->response([
                    'status' => FALSE,
                    'message' => 'Unable to add',
                    ], REST_Controller::HTTP_BAD_REQUEST);
                }
            }  

        }
        else 
        {
        $this->response([
        'status' => FALSE,
        'message' => 'Provide proper information ',
        ], REST_Controller::HTTP_OK);
        }

    }  

    /*Edit Profile*/
    public function EditProfile_post()
    {
      $id = strip_tags($this->post('id'));
      $first_name = strip_tags($this->post('first_name'));
      $last_name = strip_tags($this->post('last_name'));
      $dob = strip_tags($this->post('dob'));
      $email = strip_tags($this->post('email'));
      $phone_number = strip_tags($this->post('phone_number'));
      $bio = strip_tags($this->post('bio'));
      $gender = strip_tags($this->post('gender'));

      $this->filename = '';
        $config['upload_path'] = 'uploads/';
        $config['allowed_types'] = '*';
        $config['max_filename'] = '255';
        $this->load->library('upload', $config);
 
        
        // image is bind and upload to respective folder
        $image = $this->post('image');
        //print_r($image);die();
    	//$img = str_replace('data:image/jpeg;base64,', '', $img);
    	//$img = str_replace(' ', '+', $img);
    	if(!empty($image)){
	    	$data = base64_decode($image);
	    	$file = "uploads/" . uniqid() . '.jpeg';
	    	$success = file_put_contents($file, $data);
	    	$this->filename=$file;
	    	//print_r($file); die();
    	}
    	else {
        
        $config['max_size'] = '1024'; //1 MB
       
        
        if (!empty($_FILES['file']['name'])) {
        	
            if (!$this->upload->do_upload('file')) {
                print_r($this->upload->display_errors());
            } else {
                
                 $image = $this->upload->data()['file_name'];
                
            }
                
            
        }
        
       
    	}
    	
    	if(!empty($this->upload->data()['file_name'])){
            
	        $image = $this->upload->data()['file_name'];
	        if($image == NULL){
	            $image = '';
	        }
        }
        else {
            $image = $this->filename;
            
        }

      //$image_upload_full_path = './uploads/user_profiles/'.$filename;

      $userData= array('id'=>$id,'first_name'=>$first_name,'last_name'=>$last_name,'dob'=>$dob,'email'=>$email,'gender'=>$gender,'bio'=>$bio,'phone_number'=>$phone_number,'image'=>$image);

        if($this->UserProfileModel->updateProfile($userData,$id))
        { 
            $get_images = $this->UserProfileModel->updateImage($id);

            if($get_images)
            {
                $userData['image'] = "https://alphawizz.com/Bible/uploads/" .  $get_images;
            }

          $this->response([
            'status' => TRUE,
            'message' =>'updated profile',
            'data'=> $userData
          ], REST_Controller::HTTP_OK);
        }
        else{
        	$this->response([
            'status' => FALSE,
            'message' =>'Something went wrong',
          ], REST_Controller::HTTP_OK);
        }
      
    } 


    public function getPost_get(){
        $data = $this->PostApiModel->getPost();

        foreach ($data as $value) {
             $data['id'] = $value->id;
             $data['title'] = $value->title;
             $data['description'] = $value->description;
             $data['image'] = $value->image;

             $data1 = array('id'=>$data['id'],'title'=>$data['title'],'description'=>'<p>'.$value->description.'</p><\n>','image'=>$data['image']);

        if(!empty($data1)){
            $this->response([
                'status' => TRUE,
                'message' => 'Post list',
                'data' =>$data1,
                ], REST_Controller::HTTP_OK);
        }
        else{
          $this->response([
               'status' => FALSE,
               'message' =>'Results not found',
           ], REST_Controller::HTTP_OK);
        }
       }

    }

    public function addHighlights_post(){
       
        $data = $this->post('data');
        	
        $result1 = $this->PostApiModel->addHighlights($data);
        
        if(!empty($result1)){
           $this->response([
                'status' => TRUE,
                'message' => 'Add highlights successfully',
                'data' =>$data,
                ], REST_Controller::HTTP_OK); 
        }
        else{
           $this->response([
               'status' => FALSE,
               'message' =>'Something went wrong',
           ], REST_Controller::HTTP_OK);
        }     

    }

     public function addBookMark_post(){
        $data = $this->post('data');
        $result = $this->PostApiModel->addBookMark($data);        
        if(!empty($result)){
           $this->response([
                'status' => TRUE,
                'message' => 'BookMark added successfully',
                'data' =>$data,
                ], REST_Controller::HTTP_OK); 
        }
        else{
           $this->response([
               'status' => FALSE,
               'message' =>'Something went wrong',
           ], REST_Controller::HTTP_OK);
        }     

    }


    public function getHighlights_post(){
        $user_id = $this->post('user_id');
        $data = $this->PostApiModel->getHighlights($user_id);

        if(!empty($data)){
            $this->response([
                'status' => TRUE,
                'message' => 'Get all highlights list',
                'data' =>$data,
                ], REST_Controller::HTTP_OK);
        }
        else{
          $this->response([
               'status' => FALSE,
               'message' =>'Results not found',
           ], REST_Controller::HTTP_OK);
        }

    }


    public function addSettings_post(){
       
        $user_id = strip_tags($this->post('user_id'));
        $fontSize = strip_tags($this->post('fontSize'));
        $lineSpacing = strip_tags($this->post('lineSpacing'));
        $screenRotation = strip_tags($this->post('screenRotation'));

        $data = array('user_id'=>$user_id,'fontSize'=>$fontSize,'lineSpacing'=>$lineSpacing,'screenRotation'=>$screenRotation);
            
        $id = $this->PostApiModel->addSettings($data);

        $data = array('id'=>$id,'user_id'=>$user_id,'fontSize'=>$fontSize,'lineSpacing'=>$lineSpacing,'screenRotation'=>$screenRotation);
        
        if(!empty($data)){
           $this->response([
                'status' => TRUE,
                'message' => 'Add Settings successfully',
                'data' =>$data,
                ], REST_Controller::HTTP_OK); 
        }
        else{
           $this->response([
               'status' => FALSE,
               'message' =>'Something went wrong',
           ], REST_Controller::HTTP_OK);
        }     

    }


    public function getSettings_post(){
        $user_id = $this->post('user_id');
        $data = $this->PostApiModel->getSettings($user_id);

        if(!empty($data)){
            $this->response([
                'status' => TRUE,
                'message' => 'Get all settings list',
                'data' =>$data,
                ], REST_Controller::HTTP_OK);
        }
        else{
          $this->response([
               'status' => FALSE,
               'message' =>'Results not found',
           ], REST_Controller::HTTP_OK);
        }

    }


    // delete highlights

    public function deleteHighlights_post()
    {

        $data = $this->post('data');
        $data_result = $this->PostApiModel->deleteHighlights($data);        
        if(!empty($data_result))
        {
           
            $this->response([
            'status' => TRUE,
            'message' => 'Highlights deleted Successfully',
            ], REST_Controller::HTTP_OK);
        }
        
        
        else 
        {
            $this->response([
            'status' => FALSE,
            'message' => 'Highlights not found'
            ], REST_Controller::HTTP_OK);
        }
        
    }


    public function deleteBookMark_post()
    {

        $data = $this->post('data');
        $data_result = $this->PostApiModel->deleteBookMark($data);        
        if(!empty($data_result))
        {
           
            $this->response([
            'status' => TRUE,
            'message' => 'BookMark deleted Successfully',
            ], REST_Controller::HTTP_OK);
        }
        
        
        else 
        {
            $this->response([
            'status' => FALSE,
            'message' => 'Bookmark not found'
            ], REST_Controller::HTTP_OK);
        }
        
    }


}
