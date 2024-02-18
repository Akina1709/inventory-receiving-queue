prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.1'
,p_default_workspace_id=>66433961342613560105
,p_default_application_id=>14264
,p_default_id_offset=>0
,p_default_owner=>'WKSP_TXDEV'
);
end;
/
 
prompt APPLICATION 14264 - Inventory
--
-- Application Export:
--   Application:     14264
--   Name:            Inventory
--   Date and Time:   08:12 Sunday February 18, 2024
--   Exported By:     THXUAN
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 4
--   Manifest End
--   Version:         23.2.1
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00004
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>4);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>unistr('Khai b\00E1o danh s\00E1ch h\00E0ng ch\1EDD')
,p_alias=>unistr('KHAI-B\00C1O-DANH-S\00C1CH-H\00C0NG-CH\1EDC')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Khai b\00E1o danh s\00E1ch h\00E0ng ch\1EDD')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_last_updated_by=>'THXUAN'
,p_last_upd_yyyymmddhh24miss=>'20240216064547'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66439750023017849356)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(66435009603231079134)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(66434293992739079082)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(66435072140584079164)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66439754852488849497)
,p_plug_name=>unistr('Khai b\00E1o danh s\00E1ch h\00E0ng ch\1EDD')
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(66434397226669079129)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select WLI_ID,',
'       IIT_ID,',
'       ORIGIN,',
'       QUANTITY,',
'       DESCRIPTION,',
'       EMP_ID,',
'       DEADLINE,',
'       DONE,',
'       IIT_NAME,',
'       SAR_ID,',
'       SEND_DATE',
'  from WAITING_LIST'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66439763868819849505)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(66435070681017079163)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('C\1EADp nh\1EADt')
,p_button_position=>'CHANGE'
,p_button_condition=>'P4_WLI_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-refresh'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66439762898090849504)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(66435070681017079163)
,p_button_image_alt=>unistr('H\1EE7y')
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66439764231647849505)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(66435070681017079163)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('L\01B0u')
,p_button_position=>'CREATE'
,p_button_condition=>'P4_WLI_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66439763494794849505)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--warning:t-Button--simple:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(66435070681017079163)
,p_button_image_alt=>unistr('X\00F3a')
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P4_WLI_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash-o'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(66439764529565849505)
,p_branch_name=>'Go To Page 2'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439755139158849497)
,p_name=>'P4_WLI_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_item_source_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_item_default=>'WLI_SEQ'
,p_item_default_type=>'SEQUENCE'
,p_source=>'WLI_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439755939876849498)
,p_name=>'P4_IIT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_item_source_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_prompt=>unistr('M\00E3 h\00E0ng')
,p_source=>'IIT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(66435067972751079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439756367441849499)
,p_name=>'P4_ORIGIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_item_source_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_prompt=>unistr('Ngu\1ED3n g\1ED1c')
,p_source=>'ORIGIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>150
,p_field_template=>wwv_flow_imp.id(66435067972751079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439756779500849500)
,p_name=>'P4_QUANTITY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_item_source_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_prompt=>unistr('S\1ED1 l\01B0\1EE3ng')
,p_source=>'QUANTITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(66435067972751079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439757177203849500)
,p_name=>'P4_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_item_source_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_prompt=>unistr('Ghi ch\00FA')
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>32
,p_cMaxlength=>200
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(66435067972751079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439757555878849500)
,p_name=>'P4_EMP_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_item_source_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_prompt=>unistr('Nh\00E2n vi\00EAn')
,p_source=>'EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_EMP'
,p_lov=>'.'||wwv_flow_imp.id(66497984923721710720)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(66435067972751079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439757925978849501)
,p_name=>'P4_DEADLINE'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_item_source_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_prompt=>'Deadline'
,p_source=>'DEADLINE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(66435067972751079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439758354364849501)
,p_name=>'P4_DONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_item_source_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_prompt=>unistr('Tr\1EA1ng th\00E1i')
,p_source=>'DONE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\0110ang g\1EEDi;N,Ho\00E0n th\00E0nh;Y')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(66435067972751079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439758793420849501)
,p_name=>'P4_IIT_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_item_source_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_prompt=>unistr('T\00EAn h\00E0ng')
,p_source=>'IIT_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(66435067972751079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439759154559849502)
,p_name=>'P4_SAR_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_item_source_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_prompt=>unistr('Khu v\1EF1c kho')
,p_source=>'SAR_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:Khu v\1EF1c 1;1,Khu v\1EF1c 2;2,K\1EC7 a5;3,K\1EC7 a6 t\1EA7ng 1;4,K\1EC7 a7 t\1EA7ng 2;5')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(66435067972751079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439821241813303307)
,p_name=>'P4_SEND_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_item_source_plug_id=>wwv_flow_imp.id(66439754852488849497)
,p_prompt=>unistr('Ng\00E0y g\1EEDi')
,p_source=>'SEND_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(66435067972751079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66439820833446303303)
,p_name=>unistr('close d\00ECalog')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66439762898090849504)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66439820932807303304)
,p_event_id=>wwv_flow_imp.id(66439820833446303303)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66439765461411849506)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(66439754852488849497)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form Khai b\00E1o danh s\00E1ch h\00E0ng ch\1EDD')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66439765461411849506
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(66439765071629849506)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(66439754852488849497)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Khai b\00E1o danh s\00E1ch h\00E0ng ch\1EDD')
,p_internal_uid=>66439765071629849506
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
