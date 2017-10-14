<div class="col-beta">
    <div id="contact">
        <div class="text-centered title-heart">
            <h1>
                Liên hệ <span>Cửa gỗ nhựa Hoàng Hải</span>
            </h1>
            <div class="traitim">
                <span class="heart">
                    <img src="<?php echo site_assets(); ?>assets/css/images/heat.png"/>
                </span>
            </div>
        </div>

        <div class="forms">
            <div class="units-row end">
                <div class="line">
                    <label>&nbsp;</label>
                    <em>Xin vui lòng nhập đầy đủ những thông tin có dấu (<span class="red">*</span>)</em>
                </div>
                <div class="line">
                    <label>Họ và tên <span class="red">*</span></label>
                    <input name="name" type="text" id="ctl00_cph_Content_ctlContact1_txtFullName" class="width-100"/>
                </div>
                <div class="line">
                    <label>Điện thoại <span class="red">*</span></label>
                    <input name="phone" type="text" id="ctl00_cph_Content_ctlContact1_txtPhone" class="width-100"/>
                </div>
                <div class="line">
                    <label>E-mail <span class="red">*</span></label>
                    <input name="email" type="text" id="ctl00_cph_Content_ctlContact1_txtEmail" class="width-100"/>
                </div>
                <div class="line">
                    <label>Công ty</label>
                    <input name="company" type="text" id="ctl00_cph_Content_ctlContact1_txtCompany" class="width-100"/>
                </div>
                <div class="line">
                    <label>Địa chỉ</label>
                    <input name="address" type="text" id="ctl00_cph_Content_ctlContact1_txtAddress" class="width-100"/>
                </div>
                <div class="line">
                    <label>Tiêu đề <span class="red">*</span></label>
                    <input name="title" type="text" id="ctl00_cph_Content_ctlContact1_txtSubject" class="width-100"/>
                </div>
                <div class="line">
                    <label>Nội dung <span class="red">*</span></label>
                    <textarea name="message" rows="5" cols="20" id="ctl00_cph_Content_ctlContact1_txtContent"></textarea>
                </div>
                <div class="line">
                    <label>&nbsp;</label>
                    <input type="submit" name="ctl00$cph_Content$ctlContact1$btnSend" value=" Gửi " onclick="return validatecontact();" id="ctl00_cph_Content_ctlContact1_btnSend" class="btn-style"/>
                    <?php if ( ! empty($flashdata) ) echo $flashdata; ?>
                </div>
            </div>
        </div>

    </div>
</div>