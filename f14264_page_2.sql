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
--   Date and Time:   08:10 Sunday February 18, 2024
--   Exported By:     THXUAN
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 2
--   Manifest End
--   Version:         23.2.1
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00002
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>2);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>unistr('Danh s\00E1ch theo d\00F5i h\00E0ng ch\1EDD')
,p_alias=>unistr('DANH-S\00C1CH-THEO-D\00D5I-H\00C0NG-CH\1EDC')
,p_step_title=>unistr('Danh s\00E1ch theo d\00F5i h\00E0ng ch\1EDD')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.print_but',
'{',
'    /* position: absolute; */',
'    right: -10px;',
'    /* top: 1px; */',
'}',
'.h300',
'{',
'    height: 220px;',
'}',
'@font-face {',
'  font-family: apexfont;',
'   src: url("#WORKSPACE_FILES#ApexFont001.otf");',
' ',
'} ',
'',
'   /* body',
'{',
'    font-family: apexfont; ',
'} */',
'',
'.red',
'{',
'    background-color: lightcoral;',
'}',
'',
'.blue ',
'{',
'    background-color: lightskyblue;',
'}',
'',
'.green ',
'{',
'    background-color: lightgreen;',
'}',
'',
'.yellow',
'{',
'        background-color: #529778;',
'',
'}',
'',
'.demo {',
'    width: 80px;',
'    height: 20px;',
'    margin-right: 10px;',
'    margin-bottom: 10px;',
'}',
'',
'.card-color_N_T',
'{',
'background-color: #FFD2D3 ;',
'}',
'.card-color_N_C',
'{',
'background-color:#FFF7D7 ;',
'}',
'',
'.card-color_N_W',
'{',
'background-color: #DBEFFF;',
'}',
'',
'.card-color_Y_W',
'{',
'background-color: #A7E7AA;',
'}',
'',
'.a-Switch-toggle-D {',
'    background-color: #A7E7AA;',
'}',
'.DEADLINE_T',
'{',
'    color: #dc5b57;',
'}',
'',
'.DEADLINE_W',
'{',
'    color: #000000;',
'}',
'',
'.DEADLINE_W',
'{',
'    color: #240eee;',
'}',
'',
'.attach_but',
'{',
'    background-color: #b0c4b1  ;',
'}',
'',
'/* .bot-title,.a-CardView-subContent ',
'{',
'    font-weight: 700;',
'    /* color: #3da5d9;',
'} */',
'',
'',
'.a-CardView-subContent',
'{',
'    font-weight: 700;',
'}',
'.bot-title',
'{',
'    font-weight: 700;',
'    color: #3c6e71;',
'}',
'',
'.status_I',
'{',
'',
'    background-color: rgb(134, 238, 134);',
'}',
'',
'.status_Y',
'{',
'',
'    background-color: #FCD19C;',
'}',
'.status_N',
'{',
'',
'    background-color: #E4CCFF;',
'}',
'.status_W',
'{',
'',
'    background-color: rgb(243, 221, 96);',
'}',
'',
'.status_A',
'{',
'   background-color: #f28482;',
'}',
'',
'',
'.card-right-title',
'{',
'    position: absolute;',
'    right: 20px;',
'    padding: 5px 10px;',
'    border-radius: 8px;',
'    font-size: 12px;',
'}',
'',
'',
'',
'',
'.card-left-title',
'{',
'    font-weight: 700;',
'    color: #dc5b57;',
'    font-size: large;',
'}',
'',
'.TITLE_COLOR',
'{',
'    color: #dc5b57;',
'    font-size: 24px;',
'}',
'',
'.a-CardView.has-title',
'{',
'    box-shadow: 3px 3px 3px lightgray;',
'    border-radius: 12px;',
'    border-width: 2px;',
'}',
'',
'',
'.STATUS_N',
'{',
'    background-color: lightblue;',
'    padding: 5px 10px;',
'}',
'.STATUS_Y',
'{',
'    background-color: rgb(21, 209, 21);',
'    padding: 5px 10px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
,p_last_updated_by=>'THXUAN'
,p_last_upd_yyyymmddhh24miss=>'20240216072309'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66439096597106271363)
,p_plug_name=>unistr('Danh s\00E1ch theo d\00F5i h\00E0ng ch\1EDD (INV)')
,p_icon_css_classes=>'fa-clipboard-wrench'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(66434363985748079114)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66439097297495271364)
,p_plug_name=>unistr('Danh s\00E1ch theo d\00F5i h\00E0ng ch\1EDD')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(66434337761010079103)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select WLI_ID,',
'       to_char(SEND_DATE, ''dd-mm-yyyy'')  as SEND_DATE,',
'       IIT_ID,',
'       ORIGIN,',
'       QUANTITY,',
'       DESCRIPTION,',
'       ''Deadline: ''||  to_char(DEADLINE, ''dd-mm-yyyy'') as DEADLINE,',
'             case',
'         when  (DEADLINE = trunc(sysdate) and DONE = ''N'') then ''C''',
'         when (DEADLINE <   trunc(sysdate)  and DONE = ''N'') then ''T''',
'         else ''W''',
'      end as COMPARE,',
unistr('       Case when DONE = ''N'' then ''\0110ang g\1EEDi'' else ''Ho\00E0n th\00E0nh'' end DONE,'),
'       IIT_NAME,',
'      ',
'       DONE DONE_STATUS,',
'       Case',
unistr('       when EMP_ID = 1 then ''B\00F9i Th\1ECB Thanh Xu\00E2n'' '),
unistr('       when EMP_ID = 2 then ''Phan \0110\00ECnh Nh\1EADt'' '),
unistr('       when EMP_ID = 3 then ''\0110\1ED7 kh\00E1nh \0110\0103ng Khoa'''),
unistr('       when EMP_ID = 4 then ''Nguy\1EC5n Tr\1EA7n M\1EF9 Thoa'''),
unistr('       else ''Tr\1EA7n Th\1ECB Thu H\01B0\01A1ng'' end as EMP_ID,'),
'       case',
unistr('       when  SAR_ID = 1 then ''Khu v\1EF1c 1'''),
unistr('       when  SAR_ID = 2 then ''Khu v\1EF1c 2'''),
unistr('       when  SAR_ID = 3 then ''K\1EC7 a5'''),
unistr('       when  SAR_ID = 4 then ''K\1EC7 a6 t\1EA7ng 1'''),
unistr('       else ''K\1EC7 a7 t\1EA7ng 2'' end as SAR_ID'),
'  from WAITING_LIST WLI',
'    where (:P2_DONE = ''N'' or (:P2_DONE = ''Y'' and DONE = ''Y''))',
'  and (:P2_EXPIRATION_DATE = ''N'' or (:P2_EXPIRATION_DATE = ''Y'' and (DEADLINE = trunc(sysdate)) and DONE = ''N''))',
' and (:P2_LATE_DATE = ''N'' or (:P2_LATE_DATE = ''Y'' and (DEADLINE < trunc(sysdate)) and DONE = ''N'' ))',
' and (:P2_WAITING = ''N'' or (:P2_WAITING = ''Y'' and  DONE = ''N'' ))',
'  and (:P2_NOT_DEADLINE = ''N'' or (:P2_NOT_DEADLINE = ''Y''and (DEADLINE > trunc(sysdate)) and  DONE = ''N'' ))',
'   and :P2_EMP_ID is null or :P2_EMP_ID = WLI.EMP_ID',
' order by WLI_ID desc '))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P2_DONE,P2_EXPIRATION_DATE,P2_WAITING,P2_LATE_DATE,P2_NOT_DEADLINE,P2_EMP_ID'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P2_SHOW'
,p_plug_display_when_cond2=>'Return2'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(66439097768158271365)
,p_region_id=>wwv_flow_imp.id(66439097297495271364)
,p_layout_type=>'GRID'
,p_grid_column_count=>4
,p_card_css_classes=>'card-color_&DONE_STATUS._&COMPARE.'
,p_title_adv_formatting=>true
,p_title_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="card-left-title">&WLI_ID. </span> <span class ="card-right-title status_&DONE_STATUS.">&DONE. </span> ',
'',
'<br></br>',
'<div class=''bot-title''>&IIT_NAME.</div>'))
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
unistr('<li>M\00E3 h\00E0ng: &IIT_ID.</li>'),
unistr('<li>S\1ED1 l\01B0\1EE3ng: &QUANTITY.</li>'),
unistr('<li>Nh\00E2n vi\00EAn: &EMP_ID.</li>'),
unistr('<li>Ng\00E0y g\1EEDi: &SEND_DATE.</li>'),
unistr('<li>Ngu\1ED3n g\1ED1c: &ORIGIN.</li>'),
'</ul>'))
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'DEADLINE'
,p_second_body_css_classes=>'DEADLINE_&COMPARE.'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(66439821347822303308)
,p_card_id=>wwv_flow_imp.id(66439097768158271365)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_WLI_ID:&WLI_ID.'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(66439824599554303340)
,p_card_id=>wwv_flow_imp.id(66439097768158271365)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>20
,p_label=>unistr('Ho\00E0n th\00E0nh')
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:$s(''P2_COMPLETE_WLI_ID'',&WLI_ID.);'
,p_button_display_type=>'TEXT_WITH_ICON'
,p_icon_css_classes=>'fa-check-circle'
,p_action_css_classes=>'print_but t-Button--success '
,p_is_hot=>false
,p_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_condition_expr1=>'DONE_STATUS'
,p_condition_expr2=>'N'
,p_exec_cond_for_each_row=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66439821469141303309)
,p_plug_name=>unistr('Tham s\1ED1 ')
,p_region_css_classes=>'h300'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(66434397226669079129)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66439822218953303317)
,p_plug_name=>unistr('Ch\00FA th\00EDch ')
,p_region_css_classes=>'h300'
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(66434397226669079129)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr(' <div style="display:flex;" ><div class=''demo'' style="background-color:#A7E7AA"> </div> Ho\00E0n th\00E0nh  </div>'),
unistr('  <div style="display:flex;" ><div class=''demo'' style="background-color:#FFD2D3"> </div> Tr\1EC5 h\1EA1n  </div>'),
'',
unistr('  <div style="display:flex;" ><div class=''demo'' style="background-color:#FFF7D7"> </div> T\1EDBi h\1EA1n  </div>'),
unistr('<div style="display:flex;" ><div class=''demo'' style="background-color:#DBEFFF"> </div> Ch\01B0a t\1EDBi h\1EA1n  </div>')))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(66439822386475303318)
,p_plug_name=>unistr('D\1EA1ng b\1EA3ng h\00E0ng ch\1EDD')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(66434387441205079125)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select WLI_ID,',
'       to_char(SEND_DATE, ''dd-mm-yyyy'')  as SEND_DATE,',
'       IIT_ID,',
'       ORIGIN,',
'       QUANTITY,',
'       DESCRIPTION,',
'   ',
'       ''Deadline: ''||  to_char(DEADLINE, ''dd-mm-yyyy'') as DEADLINE,',
'              case',
unistr('         when  (DEADLINE = trunc(sysdate) and DONE = ''N'') then ''T\1EDBi h\1EA1n'''),
unistr('         when (DEADLINE <   trunc(sysdate)  and DONE = ''N'') then ''Tr\1EC5 h\1EA1n'''),
unistr('         when (DEADLINE >   trunc(sysdate)  and DONE = ''N'') then ''Ch\01B0a t\1EDBi h\1EA1n'''),
unistr('         else ''Ho\00E0n th\00E0nh'''),
'      end as COMPARE,',
unistr('       Case when DONE = ''N'' then ''\0110ang g\1EEDi'' else ''Ho\00E0n th\00E0nh'' end DONE,'),
'       IIT_NAME,',
'     ',
'       DONE DONE_STATUS,',
'              Case',
unistr('       when EMP_ID = 1 then ''B\00F9i Th\1ECB Thanh Xu\00E2n'' '),
unistr('       when EMP_ID = 2 then ''Phan \0110\00ECnh Nh\1EADt'' '),
unistr('       when EMP_ID = 3 then ''\0110\1ED7 kh\00E1nh \0110\0103ng Khoa'''),
unistr('       when EMP_ID = 4 then ''Nguy\1EC5n Tr\1EA7n M\1EF9 Thoa'''),
unistr('       else ''Tr\1EA7n Th\1ECB Thu H\01B0\01A1ng'' end as EMP_ID,'),
'       case',
unistr('       when  SAR_ID = 1 then ''Khu v\1EF1c 1'''),
unistr('       when  SAR_ID = 2 then ''Khu v\1EF1c 2'''),
unistr('       when  SAR_ID = 3 then ''K\1EC7 a5'''),
unistr('       when  SAR_ID = 4 then ''K\1EC7 a6 t\1EA7ng 1'''),
unistr('       else ''K\1EC7 a7 t\1EA7ng 2'' end as SAR_ID'),
'       ',
'  from WAITING_LIST WLI',
'    where (:P2_DONE = ''N'' or (:P2_DONE = ''Y'' and DONE = ''Y''))',
'  and (:P2_EXPIRATION_DATE = ''N'' or (:P2_EXPIRATION_DATE = ''Y'' and (DEADLINE = trunc(sysdate)) and DONE = ''N''))',
' and (:P2_LATE_DATE = ''N'' or (:P2_LATE_DATE = ''Y'' and (DEADLINE < trunc(sysdate)) and DONE = ''N'' ))',
' and (:P2_WAITING = ''N'' or (:P2_WAITING = ''Y'' and  DONE = ''N'' ))',
'  and (:P2_NOT_DEADLINE = ''N'' or (:P2_NOT_DEADLINE = ''Y''and (DEADLINE > trunc(sysdate)) and  DONE = ''N'' ))',
'  and :P2_EMP_ID is null or :P2_EMP_ID = WLI.EMP_ID',
' order by WLI_ID desc '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P2_DONE,P2_EXPIRATION_DATE,P2_WAITING,P2_LATE_DATE,P2_NOT_DEADLINE,P2_EMP_ID'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P2_SHOW'
,p_plug_display_when_cond2=>'Return1'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('D\1EA1ng b\1EA3ng h\00E0ng ch\1EDD')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(66439822416097303319)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'THXUAN'
,p_internal_uid=>66439822416097303319
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66439822513511303320)
,p_db_column_name=>'WLI_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'STT'
,p_column_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_WLI_ID:#WLI_ID#'
,p_column_linktext=>'#WLI_ID#'
,p_column_link_attr=>'class="t-Button t-Button--hot t-Button--stretch"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66439822651300303321)
,p_db_column_name=>'SEND_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('Ng\00E0y g\1EEDi')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66439822708655303322)
,p_db_column_name=>'IIT_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('M\00E3 h\00E0ng')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66439822808167303323)
,p_db_column_name=>'ORIGIN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('Ngu\1ED3n g\1ED1c')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66439822975272303324)
,p_db_column_name=>'QUANTITY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('S\1ED1 l\01B0\1EE3ng')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66439823036777303325)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('Ghi ch\00FA')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66439823296603303327)
,p_db_column_name=>'DEADLINE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Deadline'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66439823375795303328)
,p_db_column_name=>'COMPARE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Compare'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66439823494882303329)
,p_db_column_name=>'DONE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('Tr\1EA1ng th\00E1i')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66439823580916303330)
,p_db_column_name=>'IIT_NAME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>unistr('T\00EAn h\00E0ng')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66439823708032303332)
,p_db_column_name=>'DONE_STATUS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Done Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66439824335699303338)
,p_db_column_name=>'EMP_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>unistr('Nh\00E2n vi\00EAn')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(66439824454273303339)
,p_db_column_name=>'SAR_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>unistr('Khu v\1EF1c kho')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(66492255558581622924)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'664922556'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WLI_ID:SEND_DATE:IIT_ID:ORIGIN:QUANTITY:DESCRIPTION:DEADLINE:COMPARE:DONE:IIT_NAME:DONE_STATUS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66439820690493303301)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(66439096597106271363)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(66435070681017079163)
,p_button_image_alt=>unistr('T\1EA1o m\1EDBi')
,p_button_position=>'NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439821501220303310)
,p_name=>'P2_SHOW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66439821469141303309)
,p_prompt=>unistr('Ch\1EBF \0111\1ED9 xem')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:D\1EA1ng b\1EA3ng;Return1,D\1EA1ng th\1EBB;Return2')
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(66435067972751079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--radioButtonGroup'
,p_is_persistent=>'U'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439821656922303311)
,p_name=>'P2_DONE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(66439821469141303309)
,p_item_default=>'N'
,p_prompt=>unistr('Ho\00E0n th\00E0nh')
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(66435067885025079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439821735695303312)
,p_name=>'P2_EXPIRATION_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(66439821469141303309)
,p_item_default=>'N'
,p_prompt=>unistr('Ng\00E0y t\1EDBi h\1EA1n')
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(66435067885025079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439821818830303313)
,p_name=>'P2_WAITING'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(66439821469141303309)
,p_item_default=>'N'
,p_prompt=>unistr('\0110ang g\1EEDi')
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(66435067885025079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439821930377303314)
,p_name=>'P2_LATE_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(66439821469141303309)
,p_item_default=>'N'
,p_prompt=>unistr('Tr\1EC5 h\1EA1n ')
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(66435067885025079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439822046305303315)
,p_name=>'P2_NOT_DEADLINE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(66439821469141303309)
,p_item_default=>'N'
,p_prompt=>unistr('Ch\01B0a t\1EDBi h\1EA1n ')
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(66435067885025079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439822149861303316)
,p_name=>'P2_EMP_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(66439821469141303309)
,p_prompt=>unistr('Nh\00E2n vi\00EAn')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_EMP'
,p_lov=>'.'||wwv_flow_imp.id(66497984923721710720)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(66435067885025079161)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66439824663240303341)
,p_name=>'P2_COMPLETE_WLI_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(66439097297495271364)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66439821034957303305)
,p_name=>'Refresh region'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66439820690493303301)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66439821181670303306)
,p_event_id=>wwv_flow_imp.id(66439821034957303305)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66439096597106271363)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66439823842330303333)
,p_name=>'show card when click '
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_SHOW'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66439823988300303334)
,p_event_id=>wwv_flow_imp.id(66439823842330303333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66439824009327303335)
,p_name=>'change'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DONE,P2_EXPIRATION_DATE,P2_WAITING,P2_LATE_DATE,P2_NOT_DEADLINE,P2_EMP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66439824196675303336)
,p_event_id=>wwv_flow_imp.id(66439824009327303335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66439097297495271364)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66439824221588303337)
,p_event_id=>wwv_flow_imp.id(66439824009327303335)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66439822386475303318)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(66439824732380303342)
,p_name=>'Complete'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_COMPLETE_WLI_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66439824899255303343)
,p_event_id=>wwv_flow_imp.id(66439824732380303342)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'update waiting_list set done = ''Y'' where wli_id = :P2_COMPLETE_WLI_ID;'
,p_attribute_02=>'P2_COMPLETE_WLI_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66439824988731303344)
,p_event_id=>wwv_flow_imp.id(66439824732380303342)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('B\1EA1n c\00F3 ch\1EAFc ch\1EAFn mu\1ED1n ho\00E0n th\00E0nh?')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(66439825031356303345)
,p_event_id=>wwv_flow_imp.id(66439824732380303342)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(66439097297495271364)
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
