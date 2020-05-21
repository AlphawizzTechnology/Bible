
<div class="page-wrapper">
  
            <div class="content">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <h4 class="page-title">Edit Post</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <form  action="<?= base_url() ?>Doctor/edit_doctors/<?php echo $Doctor_data->id?>" method="post" 
                          enctype="multipart/form-data" accept-charset="utf-8">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Post title<span class="text-danger">*</span></label>
                                        <input class="form-control" name="title" type="text" value="<?php echo $Doctor_data->title;?>">
                                        <?= form_error('title'); ?>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Post Description</label>
                                        <textarea name="description" id="editor1" class="general form-control"><?php echo $Doctor_data->description;?></textarea>
                                        <?= form_error('description'); ?>
                                    </div>
                                </div>
                                
                                <div class="col-md-6">
									<div class="form-group">
										<label>Profile Photo</label>
										<div class="profile-upload">
											<div class="upload-img">
												<img alt=""  id="d" src="<?= base_url() ?>assets/img/user.jpg">
											</div>
											<div class="upload-input">
												<input type="file" id="doctor_image" class="form-control" name="profile_image">
                                                <p id="file_error" style="display:none;">File Type is not allowed</p>
											</div>
										</div>
									</div>
                                </div>
                            </div>
							
                            <div class="m-t-20 text-center">
                                <button class="btn btn-primary submit-btn">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
			
        </div>


        <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
     <script>
     $(document).ready(function(){
        $("#email").blur(function(){
        var email = $(this).val();
        $.post("<?= base_url() ?>Doctor/CheckEmail", {email: email}, function(result){
         if(result == 1){
             
         $('#email_error').css({"display":"block","color":"red"});
         $('.submit-btn').prop('disabled', true);
         }
         else {
             
            $('#email_error').css({"display":"none"});
            $('.submit-btn').prop('disabled', false);
         }
  });
  });



                $('#datepickers').datetimepicker({
                    format: 'DD-MM-YYYY'
                });

                   $('#doctor_image').change(function(){
                var ext = $('#doctor_image').val().split('.').pop().toLowerCase();
                if($.inArray(ext, ['gif','png','jpg','jpeg']) == -1) {
                  //alert('invalid extension!');
                  
                  $('#file_error').css({"display":"block","color":"red"});
                  //$('#file_error').val('not allowed');
                  $('.submit-btn').prop('disabled', true);
                 }
                 else {
                     $('#file_error').css({"display":"none"});
                    $('.submit-btn').prop('disabled', false);
                 }
                 })


      $('#save').click(function(event){
          
          var fn = $("#fn").val();
          var ln = $("#ln").val();
          var un = $("#un").val();
          var email = $("#email").val();
          var date = $("#datepickers").val();
          var address = $("#address").val();
          var city = $("#city").val();
          var education = $("#education").val();
          var contact = $("#contact").val();
          
          var count =0;

          if(fn.length <= 0){
           $('#fne').css('display','block');
           count++;

          }
          if(ln.length <= 0){
             $('#lne').css('display','block');    
             count++;
          }
          if(un.length <= 0){
             $('#une').css('display','block');    
             count++;
          }
          if(email.length <= 0){
             $('#emaile').css('display','block');    
             count++;
          }
          if(date.length <= 0){
             $('#date_error').css('display','block');    
             count++;
          }
          if(address.length <= 0){
             $('#address_error').css('display','block');    
             count++;
          }
          if(city.length <= 0){
             $('#city_error').css('display','block');    
             count++;
          }
          if(education.length <= 0){
             $('#education_error').css('display','block');    
             count++;
          }
          if(contact.length <= 0){
             $('#contact_error').css('display','block');    
             count++;
          }

          if(count <= 0){
            
          }
          else {
       event.preventDefault();
          }

      })

                  

             document.getElementById("doctor_image").onchange = function () {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        // get loaded data and render thumbnail.
                        document.getElementById("d").src = e.target.result;
                    };

                    // read the image file as a data URL.
                    reader.readAsDataURL(this.files[0]);
                };




          
     })
     </script>