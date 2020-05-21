<div class="page-wrapper">

            <div class="content">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <h4 class="page-title">Add Post</h4>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8 offset-lg-2">
                        <form action="<?= base_url() ?>Doctor/add_doctors" method="post" enctype="multipart/form-data">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Post title<span class="text-danger">*</span></label>
                                        <input class="form-control" name="title" type="text" value="<?= set_value('title') ?>">
                                        <?= form_error('title'); ?>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Post Description</label>
                                        <textarea name="description" class="general form-control"><?= set_value('description') ?></textarea>
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
                                <button class="btn btn-primary submit-btn">Create Post</button>
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
     