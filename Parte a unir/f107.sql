prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_190200 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2019.10.04'
,p_release=>'19.2.0.00.18'
,p_default_workspace_id=>10056618553968092
,p_default_application_id=>107
,p_default_id_offset=>0
,p_default_owner=>'DBPOLICOMERCE'
);
end;
/
 
prompt APPLICATION 107 - POlICOMERCE
--
-- Application Export:
--   Application:     107
--   Name:            POlICOMERCE
--   Date and Time:   22:09 Saturday February 1, 2020
--   Exported By:     POLICOMERCE
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     20
--       Items:                   60
--       Processes:               26
--       Regions:                 41
--       Buttons:                 44
--       Dynamic Actions:         16
--     Shared Components:
--       Logic:
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:              3
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--           Page:                 9
--           Region:              16
--           Label:                7
--           List:                12
--           Popup LOV:            1
--           Calendar:             1
--           Breadcrumb:           1
--           Button:               3
--           Report:              11
--         LOVs:                   6
--         Shortcuts:              1
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         19.2.0.00.18
--   Instance ID:     199050610100062
--

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'DBPOLICOMERCE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'POlICOMERCE')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'107')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'AC95D6690C3890BF815381DA78D9CF08757839C4CA38CDBC26E6891F6B87A32D'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'19.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_documentation_banner=>'Application created from create application wizard 2020.02.01.'
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(22750779399407664)
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'POlICOMERCE'
,p_app_builder_icon_name=>'app-icon.svg'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'POlICOMERCE'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201220639'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_menu
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(22751556794407665)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22898083792407807)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22901148406407812)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'SERVICIOS'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-bullseye'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22939711085440210)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Clientes'
,p_list_item_link_target=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(22901148406407812)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'9,10'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22905962274407817)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'OTROS'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-alert'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22952172291462864)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Categorias'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(22905962274407817)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11,12'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22962972781512634)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Roles'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.'
,p_parent_list_item_id=>wwv_flow_api.id(22905962274407817)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13,14'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17356852169491079)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Usuarios'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-book'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17393058247517626)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Articulos'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cart-full'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5,23'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17467942311551926)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Pedidos'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-inbox'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21,22'
);
end;
/
prompt --application/shared_components/navigation/lists/desktop_navigation_bar
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(22887946982407773)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22910218369407829)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22910773028407829)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_parent_list_item_id=>wwv_flow_api.id(22910218369407829)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22911136018407829)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_parent_list_item_id=>wwv_flow_api.id(22910218369407829)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(22907509141407828)
,p_name=>'Page Navigation'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22908398690407828)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'SERVICIOS'
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-bullseye'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(22909592564407829)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'OTROS'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-alert'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17355062067481826)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Usuarios'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-book'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17471605784573835)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Articulos'
,p_list_item_link_target=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cart-full'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(17472049176582782)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Pedidos'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-inbox'
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/files/app_icon_svg
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '3C73766720786D6C6E733D22687474703A2F2F7777772E77332E6F72672F323030302F737667222076696577426F783D223020302036342036342220656E61626C652D6261636B67726F756E643D226E657720302030203634203634223E3C7374796C65';
wwv_flow_api.g_varchar2_table(2) := '20747970653D22746578742F637373223E2E7374307B6F7061636974793A302E343B66696C6C3A234646464646463B7D202E7374317B66696C6C3A234646464646463B7D202E7374327B6F7061636974793A302E363B66696C6C3A234646464646463B7D';
wwv_flow_api.g_varchar2_table(3) := '202E7374337B6F7061636974793A302E313B7D3C2F7374796C653E3C726563742077696474683D22363422206865696768743D223634222066696C6C3D2223364538353938222F3E3C7061746820636C6173733D227374302220643D224D34302E393832';
wwv_flow_api.g_varchar2_table(4) := '2033336C2D2E3136332E383031632D2E32323920312E3132362D2E363720322E3138392D312E33313320332E31366C2D2E3435312E36383120342E393620342E39362E3639342D2E39303863312E3638332D322E32303420322E3736362D342E38313820';
wwv_flow_api.g_varchar2_table(5) := '332E3133332D372E3536326C2E3135322D312E313332682D372E3031327A222F3E3C7061746820636C6173733D227374312220643D224D33372E3634322033392E3035356C2D2E3638322E343531632D312E3437362E3937372D332E313920312E343934';
wwv_flow_api.g_varchar2_table(6) := '2D342E393620312E3439342D342E39363220302D392D342E3033382D392D3920302D342E32363320332E3032382D372E39373220372E3139392D382E3831396C2E3830312D2E313633762D372E3031326C2D312E3133322E313531632D372E3930362031';
wwv_flow_api.g_varchar2_table(7) := '2E3035362D31332E38363820372E3836372D31332E3836382031352E383433203020382E38323220372E31373820313620313620313620332E353233203020362E3837352D312E31333820392E3639342D332E32396C2E3930382D2E3639342D342E3936';
wwv_flow_api.g_varchar2_table(8) := '2D342E3936317A222F3E3C7061746820636C6173733D227374322220643D224D34372E3834332032392E383638632D2E3935322D372E3132312D362E3538392D31322E3735392D31332E37312D31332E37316C2D312E3133332D2E31353276372E303132';
wwv_flow_api.g_varchar2_table(9) := '6C2E3830312E31363363332E3534342E373220362E32393820332E34373420372E30313820372E3031386C2E3136332E38303168372E3031326C2D2E3135312D312E3133327A222F3E3C6720636C6173733D22737433223E3C7061746820643D224D3437';
wwv_flow_api.g_varchar2_table(10) := '2E3834332033342E313332632D2E33363720322E3734332D312E343520352E3335372D332E31333320372E3536326C2D2E3639342E3930382D342E3536322D342E3536322D2E3339382E36303220342E393620342E39362E3639342D2E39303863312E36';
wwv_flow_api.g_varchar2_table(11) := '38332D322E32303420322E3736362D342E38313820332E3133332D372E3536326C2E3135312D312E313332682D2E3133346C2D2E3031372E3133327A4D33302E3139392032342E3138316C2E3830312D2E313633762D316C2D2E3830312E313633632D34';
wwv_flow_api.g_varchar2_table(12) := '2E3137312E3834372D372E31393920342E3535362D372E31393920382E3831396C2E3032342E343636632E3234312D342E30333520332E31382D372E34373420372E3137352D382E3238357A4D34312E3639342034342E3731632D322E38313920322E31';
wwv_flow_api.g_varchar2_table(13) := '35322D362E31373120332E32392D392E36393420332E32392D382E36363120302D31352E3731392D362E3932322D31352E3937362D31352E3532316C2D2E3032342E353231633020382E38323220372E31373820313620313620313620332E3532332030';
wwv_flow_api.g_varchar2_table(14) := '20362E3837352D312E31333820392E3639342D332E32396C2E3930382D2E3639342D2E3536372D2E3536372D2E3334312E3236317A4D34302E3831392033312E3139396C2E3136332E38303168372E3031326C2D2E3133342D31682D362E3837396C2D2E';
wwv_flow_api.g_varchar2_table(15) := '3136332D2E383031632D2E37322D332E3534342D332E3437342D362E3239382D372E3031382D372E3031386C2D2E382D2E31363376316C2E3830312E31363363332E3534342E37313920362E32393920332E34373420372E30313820372E3031387A222F';
wwv_flow_api.g_varchar2_table(16) := '3E3C2F673E3C2F7376673E';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(22889059132407782)
,p_file_name=>'app-icon.svg'
,p_mime_type=>'image/svg+xml'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/app_icon_css
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2E6170702D69636F6E207B0A202020206261636B67726F756E642D696D6167653A2075726C286170702D69636F6E2E737667293B0A202020206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0A202020206261636B67726F756E';
wwv_flow_api.g_varchar2_table(2) := '642D73697A653A20636F7665723B0A202020206261636B67726F756E642D706F736974696F6E3A203530253B0A202020206261636B67726F756E642D636F6C6F723A20233645383539383B0A7D';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(22889338782407784)
,p_file_name=>'app-icon.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(22748675959407660)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(22748967646407660)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_RICH_TEXT_EDITOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(22749275843407662)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attribute_01=>'IG'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(22749530367407662)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(22749898276407662)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attribute_01=>'modern'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(22750129695407662)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attribute_01=>'fa-star'
,p_attribute_04=>'#VALUE#'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(22750490519407662)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
,p_attribute_05=>'SWITCH_CB'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(22890696928407784)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
null;
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/categorias_producto
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(22926116827419654)
,p_lov_name=>'CATEGORIAS.PRODUCTO'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'VW_CATE_ARTICULOS'
,p_return_column_name=>'CODIGO'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/categorias_servicios
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(22942684154445621)
,p_lov_name=>'CATEGORIAS.SERVICIOS'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'VW_CATE_SERVICIOS'
,p_return_column_name=>'CODIGO'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/estado_estado
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17437601413532137)
,p_lov_name=>'ESTADO.ESTADO'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ESTADO'
,p_return_column_name=>'ID_ESTADO'
,p_display_column_name=>'ESTADO'
,p_default_sort_column_name=>'ESTADO'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/login_remember_username
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(22893285289407798)
,p_lov_name=>'LOGIN_REMEMBER_USERNAME'
,p_lov_query=>'.'||wwv_flow_api.id(22893285289407798)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(22893667226407800)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Remember username'
,p_lov_return_value=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/lovs/persona_primer_nombre
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17331622926441946)
,p_lov_name=>'PERSONA.PRIMER_NOMBRE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'USUARIOS'
,p_return_column_name=>'ID_USUARIO'
,p_display_column_name=>'NOMBRE_USUARIO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/shared_components/user_interface/lovs/persona_primer_nombre1
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(17438297284532137)
,p_lov_name=>'PERSONA.PRIMER_NOMBRE1'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'USUARIOS'
,p_return_column_name=>'ID_USUARIO'
,p_display_column_name=>'NOMBRE_USUARIO'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_api.create_page_group(
 p_id=>wwv_flow_api.id(22891232979407785)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(22751040862407665)
,p_name=>'Breadcrumb'
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22751213891407665)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.'
,p_page_id=>1
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22902311431407814)
,p_short_name=>'SERVICIOS'
,p_link=>'f?p=&APP_ID.:3:&SESSION.'
,p_page_id=>3
);
wwv_flow_api.create_menu_option(
 p_id=>wwv_flow_api.id(22907164297407818)
,p_short_name=>'OTROS'
,p_link=>'f?p=&APP_ID.:6:&SESSION.'
,p_page_id=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/master_detail
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22751830079407667)
,p_theme_id=>42
,p_name=>'Marquee'
,p_internal_name=>'MASTER_DETAIL'
,p_is_popup=>false
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'))
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-info" id="t_Body_info">#REGION_POSITION_02#</div>',
'        <div class="t-Body-contentInner" role="main">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22752105865407670)
,p_page_template_id=>wwv_flow_api.id(22751830079407667)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22752463262407670)
,p_page_template_id=>wwv_flow_api.id(22751830079407667)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22752715388407670)
,p_page_template_id=>wwv_flow_api.id(22751830079407667)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22753014427407670)
,p_page_template_id=>wwv_flow_api.id(22751830079407667)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22753380506407670)
,p_page_template_id=>wwv_flow_api.id(22751830079407667)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22753634483407670)
,p_page_template_id=>wwv_flow_api.id(22751830079407667)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22753926489407671)
,p_page_template_id=>wwv_flow_api.id(22751830079407667)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22754253205407671)
,p_page_template_id=>wwv_flow_api.id(22751830079407667)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22754559320407671)
,p_page_template_id=>wwv_flow_api.id(22751830079407667)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22754939008407673)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_internal_name=>'MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--standard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--standard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22755267699407673)
,p_page_template_id=>wwv_flow_api.id(22754939008407673)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22755559657407673)
,p_page_template_id=>wwv_flow_api.id(22754939008407673)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22755815047407673)
,p_page_template_id=>wwv_flow_api.id(22754939008407673)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/login
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22756409801407673)
,p_theme_id=>42
,p_name=>'Login'
,p_internal_name=>'LOGIN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-container">',
'  <header class="t-Login-containerHeader">#REGION_POSITION_01#</header>',
'  <main class="t-Login-containerBody" id="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</main>',
'  <footer class="t-Login-containerFooter">#REGION_POSITION_02#</footer>',
'</div>',
''))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22756784356407673)
,p_page_template_id=>wwv_flow_api.id(22756409801407673)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22757052032407673)
,p_page_template_id=>wwv_flow_api.id(22756409801407673)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22757377362407675)
,p_page_template_id=>wwv_flow_api.id(22756409801407673)
,p_name=>'Body Footer'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/wizard_modal_dialog
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22758736326407675)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_internal_name=>'WIZARD_MODAL_DIALOG'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-Dialog-page t-Dialog-page--wizard #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-header">#REGION_POSITION_01#</div>',
'  <div class="t-Dialog-bodyWrapperOut">',
'    <div class="t-Dialog-bodyWrapperIn">',
'      <div class="t-Dialog-body" role="main">#SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION##BODY#</div>',
'    </div>',
'  </div>',
'  <div class="t-Dialog-footer">#REGION_POSITION_03#</div>',
'</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},''t-Dialog-page--wizard ''+#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'auto'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22759094948407675)
,p_page_template_id=>wwv_flow_api.id(22758736326407675)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22759396017407676)
,p_page_template_id=>wwv_flow_api.id(22758736326407675)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22759638021407676)
,p_page_template_id=>wwv_flow_api.id(22758736326407675)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22760223370407676)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_internal_name=>'LEFT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22760500519407676)
,p_page_template_id=>wwv_flow_api.id(22760223370407676)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22760836996407676)
,p_page_template_id=>wwv_flow_api.id(22760223370407676)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22761160317407676)
,p_page_template_id=>wwv_flow_api.id(22760223370407676)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22761401457407676)
,p_page_template_id=>wwv_flow_api.id(22760223370407676)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22761761216407676)
,p_page_template_id=>wwv_flow_api.id(22760223370407676)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22762059149407676)
,p_page_template_id=>wwv_flow_api.id(22760223370407676)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22762399480407678)
,p_page_template_id=>wwv_flow_api.id(22760223370407676)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22762675576407678)
,p_page_template_id=>wwv_flow_api.id(22760223370407676)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/right_side_column
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22763070477407678)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_internal_name=>'RIGHT_SIDE_COLUMN'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8"> ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>'))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" aria-label="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button'
||'>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22763362016407678)
,p_page_template_id=>wwv_flow_api.id(22763070477407678)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22763669188407678)
,p_page_template_id=>wwv_flow_api.id(22763070477407678)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22763961839407678)
,p_page_template_id=>wwv_flow_api.id(22763070477407678)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22764291010407678)
,p_page_template_id=>wwv_flow_api.id(22763070477407678)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22764587140407679)
,p_page_template_id=>wwv_flow_api.id(22763070477407678)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22764812410407679)
,p_page_template_id=>wwv_flow_api.id(22763070477407678)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22765161256407679)
,p_page_template_id=>wwv_flow_api.id(22763070477407678)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22765492905407679)
,p_page_template_id=>wwv_flow_api.id(22763070477407678)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
end;
/
prompt --application/shared_components/user_interface/templates/page/left_and_right_side_columns
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22765888808407679)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_internal_name=>'LEFT_AND_RIGHT_SIDE_COLUMNS'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-side" id="t_Body_side">#REGION_POSITION_02#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Body-actionsToggle" title="#EXPAND_COLLAPSE_SIDE_COL_LABEL#" id="t_Button_rightControlButton" type="button"><span class="t-Body-actionsControlsIcon" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent" role="complementary">#REGION_POSITION_03#</div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22766189863407679)
,p_page_template_id=>wwv_flow_api.id(22765888808407679)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22766414207407679)
,p_page_template_id=>wwv_flow_api.id(22765888808407679)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22766752723407681)
,p_page_template_id=>wwv_flow_api.id(22765888808407679)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22767058559407681)
,p_page_template_id=>wwv_flow_api.id(22765888808407679)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22767316519407681)
,p_page_template_id=>wwv_flow_api.id(22765888808407679)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22767632320407681)
,p_page_template_id=>wwv_flow_api.id(22765888808407679)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22767964335407681)
,p_page_template_id=>wwv_flow_api.id(22765888808407679)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22768274516407681)
,p_page_template_id=>wwv_flow_api.id(22765888808407679)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22768556193407681)
,p_page_template_id=>wwv_flow_api.id(22765888808407679)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
end;
/
prompt --application/shared_components/user_interface/templates/page/minimal_no_navigation
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22768955281407681)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_internal_name=>'MINIMAL_NO_NAVIGATION'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Icon fa fa-bars" aria-hidden="true"'
||'></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22769251649407682)
,p_page_template_id=>wwv_flow_api.id(22768955281407681)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22769592165407682)
,p_page_template_id=>wwv_flow_api.id(22768955281407681)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22769872217407682)
,p_page_template_id=>wwv_flow_api.id(22768955281407681)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22770177717407682)
,p_page_template_id=>wwv_flow_api.id(22768955281407681)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22770418714407682)
,p_page_template_id=>wwv_flow_api.id(22768955281407681)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22770705040407682)
,p_page_template_id=>wwv_flow_api.id(22768955281407681)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22771023711407682)
,p_page_template_id=>wwv_flow_api.id(22768955281407681)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/page/standard
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(22771428404407682)
,p_theme_id=>42
,p_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html class="no-js #RTL_CLASS# page-&APP_PAGE_ID. app-&APP_ALIAS." lang="&BROWSER_LANGUAGE." #TEXT_DIRECTION#>',
'<head>',
'  <meta http-equiv="x-ua-compatible" content="IE=edge" />',
'  <meta charset="utf-8">',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0" />',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #TEXT_DIRECTION# #ONLOAD# id="t_PageBody">',
'<a href="#main" id="t_Body_skipToContent">&APP_TEXT$UI_PAGE_SKIP_TO_CONTENT.</a>',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding" role="banner">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" aria-label="#EXPAND_COLLAPSE_NAV_LABEL#" title="#EXPAND_COLLAPSE_NAV_LABEL#" id="t_Button_navControl" type="button"><span class="t-Header-controlsIcon" aria-hidden="t'
||'rue"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">#NAVIGATION_BAR#</div>',
'  </div>',
'  <div class="t-Header-nav">#TOP_GLOBAL_NAVIGATION_LIST##REGION_POSITION_06#</div>',
'</header>',
''))
,p_box=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">#REGION_POSITION_01#</div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      <main id="main" class="t-Body-mainContent">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-fullContent">#REGION_POSITION_08#</div>',
'        <div class="t-Body-contentInner">#BODY#</div>',
'      </main>',
'      <footer class="t-Footer" role="contentinfo">',
'        <div class="t-Footer-body">',
'          <div class="t-Footer-content">#REGION_POSITION_05#</div>',
'          <div class="t-Footer-apex">',
'            <div class="t-Footer-version">#APP_VERSION#</div>',
'            <div class="t-Footer-customize">#CUSTOMIZE#</div>',
'            #BUILT_WITH_LOVE_USING_APEX#',
'          </div>',
'        </div>',
'        <div class="t-Footer-top">',
'          <a href="#top" class="t-Footer-topButton" id="t_Footer_topButton"><span class="a-Icon icon-up-chevron"></span></a>',
'        </div>',
'      </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">#REGION_POSITION_04#</div>'))
,p_footer_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">#MESSAGE#</div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'      <span class="t-Icon a-Icon icon-user"></span>',
'      <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'    <span class="t-Icon #IMAGE#"></span>',
'    <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>2
,p_grid_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>#CONTENT#</div>'
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22771767429407684)
,p_page_template_id=>wwv_flow_api.id(22771428404407682)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22772079685407684)
,p_page_template_id=>wwv_flow_api.id(22771428404407682)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22772312746407684)
,p_page_template_id=>wwv_flow_api.id(22771428404407682)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22772659780407684)
,p_page_template_id=>wwv_flow_api.id(22771428404407682)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22772975942407684)
,p_page_template_id=>wwv_flow_api.id(22771428404407682)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22773227030407684)
,p_page_template_id=>wwv_flow_api.id(22771428404407682)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(22773578619407684)
,p_page_template_id=>wwv_flow_api.id(22771428404407682)
,p_name=>'Before Content Body'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/button/icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(22865062901407750)
,p_template_name=>'Icon'
,p_internal_name=>'ICON'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(22865788950407750)
,p_template_name=>'Text'
,p_internal_name=>'TEXT'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/button/text_with_icon
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(22865817769407750)
,p_template_name=>'Text with Icon'
,p_internal_name=>'TEXT_WITH_ICON'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region/alert
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22773972661407684)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">#BODY#</div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_internal_name=>'ALERT'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22774249065407687)
,p_plug_template_id=>wwv_flow_api.id(22773972661407684)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22777617594407689)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/blank_with_attributes_no_grid
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22777800340407689)
,p_layout=>'TABLE'
,p_template=>'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#">#PREVIOUS##BODY##SUB_REGIONS##NEXT#</div>'
,p_page_plug_template_name=>'Blank with Attributes (No Grid)'
,p_internal_name=>'BLANK_WITH_ATTRIBUTES_NO_GRID'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3369790999010910123
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22778149826407689)
,p_plug_template_id=>wwv_flow_api.id(22777800340407689)
,p_name=>'Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22778491328407689)
,p_plug_template_id=>wwv_flow_api.id(22777800340407689)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/buttons_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22778612489407690)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##CLOSE##DELETE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_internal_name=>'BUTTONS_CONTAINER'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22778994911407690)
,p_plug_template_id=>wwv_flow_api.id(22778612489407690)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22779253114407690)
,p_plug_template_id=>wwv_flow_api.id(22778612489407690)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/carousel_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22780852676407690)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_internal_name=>'CAROUSEL_CONTAINER'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.1/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#'))
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22781194598407692)
,p_plug_template_id=>wwv_flow_api.id(22780852676407690)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22781466693407692)
,p_plug_template_id=>wwv_flow_api.id(22780852676407690)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/collapsible
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22788069757407695)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls"><button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button></div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_internal_name=>'COLLAPSIBLE'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22788305798407696)
,p_plug_template_id=>wwv_flow_api.id(22788069757407695)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22788697866407696)
,p_plug_template_id=>wwv_flow_api.id(22788069757407695)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/content_block
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22793442947407700)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ContentBlock #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-ContentBlock-header">',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--title">',
'      <span class="t-ContentBlock-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'      <h1 class="t-ContentBlock-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'      #EDIT#',
'    </div>',
'    <div class="t-ContentBlock-headerItems t-ContentBlock-headerItems--buttons">#CHANGE#</div>',
'  </div>',
'  <div class="t-ContentBlock-body">#BODY#</div>',
'  <div class="t-ContentBlock-buttons">#PREVIOUS##NEXT#</div>',
'</div>',
''))
,p_page_plug_template_name=>'Content Block'
,p_internal_name=>'CONTENT_BLOCK'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-ContentBlock--h1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2320668864738842174
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/hero
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22795414839407700)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h1 class="t-HeroRegion-title">#TITLE#</h1>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_internal_name=>'HERO'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22795783805407700)
,p_plug_template_id=>wwv_flow_api.id(22795414839407700)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_dialog
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22797530481407701)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_internal_name=>'INLINE_DIALOG'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22797887859407703)
,p_plug_template_id=>wwv_flow_api.id(22797530481407701)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/inline_popup
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22799874249407704)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionPopup" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-wrap">',
'    <div class="t-DialogRegion-bodyWrapperOut"><div class="t-DialogRegion-bodyWrapperIn"><div class="t-DialogRegion-body">#BODY#</div></div></div>',
'    <div class="t-DialogRegion-buttons">',
'       <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'         <div class="t-ButtonRegion-wrap">',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'           <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'         </div>',
'       </div>',
'    </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Popup'
,p_internal_name=>'INLINE_POPUP'
,p_theme_id=>42
,p_theme_class_id=>24
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>1483922538999385230
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22800150180407704)
,p_plug_template_id=>wwv_flow_api.id(22799874249407704)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/interactive_report
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22803190075407707)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_internal_name=>'INTERACTIVE_REPORT'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/login
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22803772076407707)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">#BODY#</div>',
'  <div class="t-Login-buttons">#NEXT#</div>',
'  <div class="t-Login-links">#EDIT##CREATE#</div>',
'  <div class="t-Login-subRegions">#SUB_REGIONS#</div>',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_internal_name=>'LOGIN'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22804005085407707)
,p_plug_template_id=>wwv_flow_api.id(22803772076407707)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/standard
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22805024331407707)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <span class="t-Region-headerIcon"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span></span>',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22805341528407709)
,p_plug_template_id=>wwv_flow_api.id(22805024331407707)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22805664146407709)
,p_plug_template_id=>wwv_flow_api.id(22805024331407707)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
end;
/
prompt --application/shared_components/user_interface/templates/region/tabs_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22811847777407712)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES# apex-tabs-region" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_internal_name=>'TABS_CONTAINER'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22812183897407712)
,p_plug_template_id=>wwv_flow_api.id(22811847777407712)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22812447714407712)
,p_plug_template_id=>wwv_flow_api.id(22811847777407712)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/region/title_bar
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22814497036407714)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_internal_name=>'TITLE_BAR'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/region/wizard_container
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(22815487023407714)
,p_layout=>'TABLE'
,p_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_internal_name=>'WIZARD_CONTAINER'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(22815738140407714)
,p_plug_template_id=>wwv_flow_api.id(22815487023407714)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22840757501407731)
,p_list_template_current=>'<li class="t-NavTabs-item #A03# is-active" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class'
||'="t-NavTabs-badge #A05#">#A02#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-NavTabs-item #A03#" id="#A01#"><a href="#LINK#" class="t-NavTabs-link #A04# " title="#TEXT_ESC_SC#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-NavTabs-label">#TEXT_ESC_SC#</span><span class="t-NavTab'
||'s-badge #A05#">#A02#</span></a></li>'
,p_list_template_name=>'Top Navigation Tabs'
,p_internal_name=>'TOP_NAVIGATION_TABS'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_list_template_before_rows=>'<ul class="t-NavTabs #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_navtabs">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'List Item ID'
,p_a02_label=>'Badge Value'
,p_a03_label=>'List Item Class'
,p_a04_label=>'Link Class'
,p_a05_label=>'Badge Class'
,p_reference_id=>1453011561172885578
);
end;
/
prompt --application/shared_components/user_interface/templates/list/wizard_progress
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22842398256407732)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></'
||'div></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap" data-link="#LINK#"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>',
''))
,p_list_template_name=>'Wizard Progress'
,p_internal_name=>'WIZARD_PROGRESS'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22843731514407734)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_internal_name=>'MENU_BAR'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
end;
/
prompt --application/shared_components/user_interface/templates/list/badge_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22844932903407734)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <a class="t-BadgeList-wrap u-color #A04#" href="#LINK#" #A03#>',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_theme_id=>42
,p_theme_class_id=>3
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--cols t-BadgeList--3cols:t-BadgeList--circular'
,p_list_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'Link Classes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
end;
/
prompt --application/shared_components/user_interface/templates/list/media_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22848934064407737)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #A05#" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showIcons:t-MediaList--showDesc'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Class'
,p_a06_label=>'Icon Color Class'
,p_reference_id=>2066548068783481421
);
end;
/
prompt --application/shared_components/user_interface/templates/list/side_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22851954945407739)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_internal_name=>'SIDE_NAVIGATION_MENU'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>'apex.jQuery(''body'').addClass(''t-PageBody--leftNav'');'
,p_theme_id=>42
,p_theme_class_id=>19
,p_preset_template_options=>'js-navCollapsed--default:t-TreeNav--styleA'
,p_list_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
end;
/
prompt --application/shared_components/user_interface/templates/list/top_navigation_menu
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22853514502407740)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_internal_name=>'TOP_NAVIGATION_MENU'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("#t_MenuNav", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true,',
'  callout: e.hasClass("js-menu-callout")',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="t_MenuNav"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
end;
/
prompt --application/shared_components/user_interface/templates/list/navigation_bar
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22854759522407742)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_internal_name=>'NAVIGATION_BAR'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
end;
/
prompt --application/shared_components/user_interface/templates/list/cards
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22855108368407742)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item is-active #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap" #A05#>',
'      <div class="t-Card-icon u-color #A06#"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3><h4 class="t-Card-subtitle">#A07#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #A06#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_a05_label=>'Link Attributes'
,p_a06_label=>'Card Color Class'
,p_a07_label=>'Subtitle'
,p_reference_id=>2885322685880632508
);
end;
/
prompt --application/shared_components/user_interface/templates/list/tabs
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22860544374407745)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_internal_name=>'TABS'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.apexTabs#MIN#.js?v=#APEX_VERSION#'
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Tabs--simple'
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
end;
/
prompt --application/shared_components/user_interface/templates/list/menu_popup
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22862157042407746)
,p_list_template_current=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_internal_name=>'MENU_POPUP'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  apex.actions.addFromMarkup( e );',
'}',
'e.menu({ slide: e.hasClass("js-slide"), iconType: ''fa'', callout: e.hasClass("js-menu-callout")});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
end;
/
prompt --application/shared_components/user_interface/templates/list/links_list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(22862749873407746)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_internal_name=>'LINKS_LIST'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
end;
/
prompt --application/shared_components/user_interface/templates/report/timeline
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22816766798407715)
,p_row_template_name=>'Timeline'
,p_internal_name=>'TIMELINE'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline" data-region-id="#REGION_STATIC_ID#">',
''))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/content_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22817385780407717)
,p_row_template_name=>'Content Row'
,p_internal_name=>'CONTENT_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-ContentRow-item #ITEM_CLASSES#">',
'  <div class="t-ContentRow-wrap">',
'    <div class="t-ContentRow-selection">#SELECTION#</div>',
'    <div class="t-ContentRow-iconWrap">',
'      <span class="t-ContentRow-icon #ICON_CLASS#">#ICON_HTML#</span>',
'    </div>',
'    <div class="t-ContentRow-body">',
'      <div class="t-ContentRow-content">',
'        <h3 class="t-ContentRow-title">#TITLE#</h3>',
'        <div class="t-ContentRow-description">#DESCRIPTION#</div>',
'      </div>',
'      <div class="t-ContentRow-misc">#MISC#</div>',
'      <div class="t-ContentRow-actions">#ACTIONS#</div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-ContentRow #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'#PAGINATION#'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1797843454948280151
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/media_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22820532286407718)
,p_row_template_name=>'Media List'
,p_internal_name=>'MEDIA_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_row_template_condition1=>':LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item #LIST_CLASS#">',
'    <div class="t-MediaList-itemWrap #LINK_CLASS#" #LINK_ATTR#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon u-color #ICON_COLOR_CLASS#"><span class="t-Icon #ICON_CLASS#"></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#LIST_TITLE#</h3>',
'            <p class="t-MediaList-desc">#LIST_TEXT#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#LIST_BADGE#</span>',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_preset_template_options=>'t-MediaList--stack'
,p_reference_id=>2092157460408299055
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_row
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22823998869407720)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_ROW'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/value_attribute_pairs_column
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22825931245407721)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_internal_name=>'VALUE_ATTRIBUTE_PAIRS_COLUMN'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/badge_list
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22827754665407723)
,p_row_template_name=>'Badge List'
,p_internal_name=>'BADGE_LIST'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
' <span class="t-BadgeList-wrap u-color">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
' </span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList #COMPONENT_CSS_CLASSES#" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/standard
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22831338776407725)
,p_row_template_name=>'Standard'
,p_internal_name=>'STANDARD'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES# data-region-id="#REGION_STATIC_ID#">',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" aria-label="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(22831338776407725)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
end;
/
prompt --application/shared_components/user_interface/templates/report/comments
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22833901569407726)
,p_row_template_name=>'Comments'
,p_internal_name=>'COMMENTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body">',
'        <div class="t-Comments-info">',
'            #USER_NAME# <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/alerts
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22835182018407728)
,p_row_template_name=>'Alerts'
,p_internal_name=>'ALERTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_alerts" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/cards
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22835394100407728)
,p_row_template_name=>'Cards'
,p_internal_name=>'CARDS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':CARD_LINK is not null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <div class="t-Card-wrap">',
'      <div class="t-Card-icon u-color #CARD_COLOR#"><span class="t-Icon fa #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3><h4 class="t-Card-subtitle">#CARD_SUBTITLE#</h4></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'      <span class="t-Card-colorFill u-color #CARD_COLOR#"></span>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards" data-region-id="#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--animColorFill:t-Cards--3cols:t-Cards--basic'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/report/search_results
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(22840543628407731)
,p_row_template_name=>'Search Results'
,p_internal_name=>'SEARCH_RESULTS'
,p_row_template1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report" data-region-id="#REGION_STATIC_ID#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/hidden
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(22864393233407746)
,p_template_name=>'Hidden'
,p_internal_name=>'HIDDEN'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(22864418205407748)
,p_template_name=>'Optional'
,p_internal_name=>'OPTIONAL'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(22864575200407748)
,p_template_name=>'Optional - Above'
,p_internal_name=>'OPTIONAL_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/optional_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(22864657504407748)
,p_template_name=>'Optional - Floating'
,p_internal_name=>'OPTIONAL_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>1607675164727151865
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(22864717689407748)
,p_template_name=>'Required'
,p_internal_name=>'REQUIRED'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer is-required rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_above
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(22864849928407748)
,p_template_name=>'Required - Above'
,p_internal_name=>'REQUIRED_ABOVE'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label/required_floating
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(22864975172407748)
,p_template_name=>'Required - Floating'
,p_internal_name=>'REQUIRED_FLOATING'
,p_template_body1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_string.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--floatingLabel is-required #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_item_pre_text=>'<span class="t-Form-itemText t-Form-itemText--pre">#CURRENT_ITEM_PRE_TEXT#</span>'
,p_item_post_text=>'<span class="t-Form-itemText t-Form-itemText--post">#CURRENT_ITEM_POST_TEXT#</span>'
,p_before_element=>'<div class="t-Form-inputContainer"><div class="t-Form-itemWrapper">#ITEM_PRE_TEXT#'
,p_after_element=>'#ITEM_POST_TEXT##HELP_TEMPLATE#</div>#INLINE_HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Form-helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden="true"></span></button>'
,p_inline_help_text=>'<span class="t-Form-inlineHelp">#CURRENT_ITEM_INLINE_HELP_TEXT#</span>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>1607675344320152883
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(22867135316407751)
,p_name=>'Breadcrumb'
,p_internal_name=>'BREADCRUMB'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><h1 class="t-Breadcrumb-label">#NAME#</h1></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(22867361807407754)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="apex-item-text"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(22867229096407753)
,p_cal_template_name=>'Calendar'
,p_internal_name=>'CALENDAR'
,p_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" aria-label="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_cust_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_cust_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" aria-label="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">'
,p_cust_weekend_close_format=>'</td>'
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_cust_wk_month_close_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_cust_wk_weekend_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">'
,p_cust_wk_weekend_close_format=>'</td>'
,p_agenda_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(22868527166407762)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(22771428404407682)
,p_default_dialog_template=>wwv_flow_api.id(22754939008407673)
,p_error_template=>wwv_flow_api.id(22756409801407673)
,p_printer_friendly_template=>wwv_flow_api.id(22771428404407682)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(22756409801407673)
,p_default_button_template=>wwv_flow_api.id(22865788950407750)
,p_default_region_template=>wwv_flow_api.id(22805024331407707)
,p_default_chart_template=>wwv_flow_api.id(22805024331407707)
,p_default_form_template=>wwv_flow_api.id(22805024331407707)
,p_default_reportr_template=>wwv_flow_api.id(22805024331407707)
,p_default_tabform_template=>wwv_flow_api.id(22805024331407707)
,p_default_wizard_template=>wwv_flow_api.id(22805024331407707)
,p_default_menur_template=>wwv_flow_api.id(22814497036407714)
,p_default_listr_template=>wwv_flow_api.id(22805024331407707)
,p_default_irr_template=>wwv_flow_api.id(22803190075407707)
,p_default_report_template=>wwv_flow_api.id(22831338776407725)
,p_default_label_template=>wwv_flow_api.id(22864657504407748)
,p_default_menu_template=>wwv_flow_api.id(22867135316407751)
,p_default_calendar_template=>wwv_flow_api.id(22867229096407753)
,p_default_list_template=>wwv_flow_api.id(22862749873407746)
,p_default_nav_list_template=>wwv_flow_api.id(22853514502407740)
,p_default_top_nav_list_temp=>wwv_flow_api.id(22853514502407740)
,p_default_side_nav_list_temp=>wwv_flow_api.id(22851954945407739)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(22778612489407690)
,p_default_dialogr_template=>wwv_flow_api.id(22777617594407689)
,p_default_option_label=>wwv_flow_api.id(22864657504407748)
,p_default_required_label=>wwv_flow_api.id(22864975172407748)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(22854759522407742)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.4/')
,p_files_version=>66
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(17473078144679375)
,p_theme_id=>42
,p_name=>'Vita - Red (Copy)'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{}}'
,p_theme_roller_output_file_url=>'#THEME_DB_IMAGES#17473078144679375.css'
,p_theme_roller_read_only=>false
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(22867576345407756)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(22867797131407756)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(22867967505407756)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(22868126575407756)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(22868315120407756)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A200D0A202A2056697461202D205265642028436F7079290D0A202A20202020284F7261636C65204170706C69636174696F6E2045787072657373205468656D65205374796C65290D0A202A200D0A202A2054686973204353532066696C6520776173';
wwv_flow_api.g_varchar2_table(2) := '2067656E657261746564207573696E6720746865204F7261636C65204170706C69636174696F6E204578707265737320352E30205468656D6520526F6C6C65722E200D0A202A200D0A202A2F0D0A0D0A64697623745F547265654E6176207B0D0A202062';
wwv_flow_api.g_varchar2_table(3) := '6F782D736861646F773A202D31707820302030207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A2E742D426F6479207B0D0A20200D0A7D0D0A2E742D426F6479202E612D4D696E6943616C207B0D0A2020626F726465723A20';
wwv_flow_api.g_varchar2_table(4) := '31707820736F6C696420236534653465343B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20234644464446443B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D7469746C65';
wwv_flow_api.g_varchar2_table(5) := '207B0D0A2020636F6C6F723A20233234323432343B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461794F665765656B207B0D0A2020636F6C6F723A20233765376537653B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D64';
wwv_flow_api.g_varchar2_table(6) := '6179207B0D0A2020626F726465722D636F6C6F723A20236637663766373B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D646174';
wwv_flow_api.g_varchar2_table(7) := '65207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C';
wwv_flow_api.g_varchar2_table(8) := '2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A2020';
wwv_flow_api.g_varchar2_table(9) := '6261636B67726F756E642D636F6C6F723A20236638663866383B0D0A7D0D0A2E742D426F6479202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236633663366333B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(10) := '2D526567696F6E207B0D0A20200D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236536653665363B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626163';
wwv_flow_api.g_varchar2_table(11) := '6B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C';
wwv_flow_api.g_varchar2_table(12) := '2D6461794F665765656B207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20236639663966393B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(13) := '3430343034303B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(14) := '6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D';
wwv_flow_api.g_varchar2_table(15) := '0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A7D0D0A2E742D5265';
wwv_flow_api.g_varchar2_table(16) := '67696F6E202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E742D426F64792D616374696F6E73207B0D0A20200D0A7D0D0A2E742D426F64792D6163';
wwv_flow_api.g_varchar2_table(17) := '74696F6E73202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236530653065303B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A2023663966396639';
wwv_flow_api.g_varchar2_table(18) := '3B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461794F665765656B';
wwv_flow_api.g_varchar2_table(19) := '207B0D0A2020636F6C6F723A20233761376137613B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20236633663366333B0D0A2020636F6C6F723A202333613361';
wwv_flow_api.g_varchar2_table(20) := '33613B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A202063';
wwv_flow_api.g_varchar2_table(21) := '6F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(22) := '4642434534413B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023663466';
wwv_flow_api.g_varchar2_table(23) := '3466343B0D0A7D0D0A2E742D426F64792D616374696F6E73202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236566656665663B0D0A7D0D0A2E742D426F64792D696E666F207B0D0A';
wwv_flow_api.g_varchar2_table(24) := '20200D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C207B0D0A2020626F726465723A2031707820736F6C696420236536653665363B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(25) := '636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D7469746C65207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D64';
wwv_flow_api.g_varchar2_table(26) := '61794F665765656B207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D646179207B0D0A2020626F726465722D636F6C6F723A20236639663966393B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(27) := '233430343034303B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D746F646179202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A20';
wwv_flow_api.g_varchar2_table(28) := '20636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D616374697665202E612D4D696E6943616C2D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A202346';
wwv_flow_api.g_varchar2_table(29) := '42434534413B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D7765656B656E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B';
wwv_flow_api.g_varchar2_table(30) := '0D0A7D0D0A2E742D426F64792D696E666F202E612D4D696E6943616C2D6461792E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E742D4156504C6973742D6974656D207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(31) := '782D736861646F773A2030202D302E3172656D2030207267626128302C20302C20302C20302E30352920696E7365743B0D0A7D0D0A2E742D4156504C6973742D6C6162656C2C0D0A2E742D4156504C6973742D76616C7565207B0D0A2020626F782D7368';
wwv_flow_api.g_varchar2_table(32) := '61646F773A203020302E3172656D207267626128302C20302C20302C20302E3037352920696E7365743B0D0A7D0D0A2E742D4156504C6973742D76616C7565207B0D0A2020636F6C6F723A20233462346234623B0D0A7D0D0A2E742D426F64792D696E66';
wwv_flow_api.g_varchar2_table(33) := '6F202E742D4156504C6973742D76616C7565207B0D0A2020636F6C6F723A20233464346434643B0D0A7D0D0A2E742D526567696F6E202E742D4156504C6973742D76616C7565207B0D0A2020636F6C6F723A20233464346434643B0D0A7D0D0A2E742D41';
wwv_flow_api.g_varchar2_table(34) := '56504C6973742D6C6162656C207B0D0A2020636F6C6F723A20233234323432343B0D0A7D0D0A2E742D426F64792D696E666F202E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(35) := '6F6E202E742D4156504C6973742D6C6162656C207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D4156504C697374202B202E742D5265706F72742D706167696E6174696F6E207B0D0A2020626F726465722D746F702D636F6C6F72';
wwv_flow_api.g_varchar2_table(36) := '3A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D416C6572742D2D77697A6172642C0D0A2E742D416C6572742D2D686F72697A6F6E74616C207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(37) := '722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D7761726E696E672C0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D79656C';
wwv_flow_api.g_varchar2_table(38) := '6C6F77207B0D0A20206261636B67726F756E642D636F6C6F723A20236665663765303B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D73756363657373207B0D0A202062';
wwv_flow_api.g_varchar2_table(39) := '61636B67726F756E642D636F6C6F723A20236634666366333B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D64616E6765722C0D0A2E742D416C6572742D2D636F6C6F72';
wwv_flow_api.g_varchar2_table(40) := '42472E742D416C6572742D2D726564207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663866373B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D2D636F6C6F7242472E742D416C6572742D2D696E';
wwv_flow_api.g_varchar2_table(41) := '666F207B0D0A20206261636B67726F756E642D636F6C6F723A20236639666366663B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D416C6572742D69636F6E202E742D49636F6E207B0D0A2020636F6C6F723A20234646463B0D0A7D';
wwv_flow_api.g_varchar2_table(42) := '0D0A2E742D416C6572742D2D7761726E696E67202E742D416C6572742D69636F6E202E742D49636F6E2C0D0A2E742D416C6572742D2D79656C6C6F77202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A2020636F6C6F723A202346424345';
wwv_flow_api.g_varchar2_table(43) := '34413B0D0A7D0D0A2E742D416C6572742D2D7761726E696E672E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E2C0D0A2E742D416C6572742D2D79656C6C6F772E742D416C6572742D2D686F72697A6F6E74616C202E';
wwv_flow_api.g_varchar2_table(44) := '742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235312C203230362C2037342C20302E3135293B0D0A7D0D0A2E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E202E74';
wwv_flow_api.g_varchar2_table(45) := '2D49636F6E207B0D0A2020636F6C6F723A20233342414132433B0D0A7D0D0A2E742D416C6572742D2D737563636573732E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(46) := '6F6C6F723A20726762612835392C203137302C2034342C20302E3135293B0D0A7D0D0A2E742D416C6572742D2D696E666F202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A2020636F6C6F723A20233030373664663B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(47) := '416C6572742D2D696E666F2E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C203131382C203232332C20302E3135293B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(48) := '2D416C6572742D2D64616E676572202E742D416C6572742D69636F6E202E742D49636F6E2C0D0A2E742D416C6572742D2D726564202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A2020636F6C6F723A20236634343333363B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(49) := '2E742D416C6572742D2D64616E6765722E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E2C0D0A2E742D416C6572742D2D7265642E742D416C6572742D2D686F72697A6F6E74616C202E742D416C6572742D69636F6E';
wwv_flow_api.g_varchar2_table(50) := '207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283234342C2036372C2035342C20302E3135293B0D0A7D0D0A2E742D416C6572742D2D77697A617264202E742D416C6572742D696E736574207B0D0A2020626F726465722D726164';
wwv_flow_api.g_varchar2_table(51) := '6975733A203270783B0D0A7D0D0A2E742D416C6572742D2D686F72697A6F6E74616C2C0D0A2E742D416C6572742D2D77697A617264207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A2023323632';
wwv_flow_api.g_varchar2_table(52) := '3632363B0D0A7D0D0A2E742D416C6572742D2D70616765207B0D0A2020626F782D736861646F773A20302030203020302E3172656D207267626128302C20302C20302C20302E312920696E7365742C20302033707820397078202D327078207267626128';
wwv_flow_api.g_varchar2_table(53) := '302C20302C20302C20302E31293B0D0A7D0D0A2E742D416C6572742D2D70616765202E612D4E6F74696669636174696F6E2D6974656D3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C2030';
wwv_flow_api.g_varchar2_table(54) := '2E35293B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612835392C203137302C2034342C20302E39293B0D0A2020636F6C6F723A202346';
wwv_flow_api.g_varchar2_table(55) := '46463B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(56) := '234646463B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D73756363657373202E742D416C6572742D69636F6E202E742D49636F6E207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D416C6572742D2D70';
wwv_flow_api.g_varchar2_table(57) := '6167652E742D416C6572742D2D73756363657373202E742D427574746F6E2D2D636C6F7365416C657274207B0D0A2020636F6C6F723A20234646462021696D706F7274616E743B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D';
wwv_flow_api.g_varchar2_table(58) := '7761726E696E67207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D7761726E696E67202E742D416C';
wwv_flow_api.g_varchar2_table(59) := '6572742D69636F6E202E742D49636F6E207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D7761726E696E672061207B0D0A2020636F6C6F723A20696E68657269743B0D0A2020';
wwv_flow_api.g_varchar2_table(60) := '746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A2E742D416C6572742D2D706167652E742D416C6572742D2D7761726E696E67202E612D4E6F74696669636174696F6E2D6974656D3A6265666F7265207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(61) := '6B67726F756E642D636F6C6F723A2063757272656E74436F6C6F723B0D0A7D0D0A2E742D4C6F67696E2D636F6E7461696E6572426F6479202E742D426F64792D616C657274207B0D0A202077696474683A2034363070783B0D0A7D0D0A2E742D42616467';
wwv_flow_api.g_varchar2_table(62) := '652D2D6261736963207B0D0A2020626F782D736861646F773A20302030203020302E3172656D2072676261283235352C203235352C203235352C20302E3032352920696E7365743B0D0A7D0D0A2E742D42616467652D2D6F72623A6265666F7265207B0D';
wwv_flow_api.g_varchar2_table(63) := '0A2020626F782D736861646F773A20302030203020302E3172656D2072676261283235352C203235352C203235352C20302E30352920696E7365743B0D0A7D0D0A2E742D42616467652D2D6F72622E69732D6E756C6C3A6265666F7265207B0D0A202063';
wwv_flow_api.g_varchar2_table(64) := '6F6C6F723A20233730373037303B0D0A7D0D0A2E742D42616467652D2D62617369632E69732D6E756C6C207B0D0A2020636F6C6F723A20233730373037303B0D0A7D0D0A2E742D42616467654C6973742C0D0A2E742D42616467654C6973743A6E6F7428';
wwv_flow_api.g_varchar2_table(65) := '2E752D636F6C6F7273292061202E742D42616467654C6973742D6C6162656C207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C7565207B';
wwv_flow_api.g_varchar2_table(66) := '0D0A2020626F782D736861646F773A2030203020302031707820726762612833382C2033382C2033382C20302E312920696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42616467654C6973';
wwv_flow_api.g_varchar2_table(67) := '742D2D63697263756C617220612E742D42616467654C6973742D777261703A686F766572202E742D42616467654C6973742D76616C7565207B0D0A2020626F782D736861646F773A20302030203020347078202364613162316220696E7365743B0D0A20';
wwv_flow_api.g_varchar2_table(68) := '206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A666F6375732C0D0A2E742D';
wwv_flow_api.g_varchar2_table(69) := '42616467654C6973742D2D64617368202E742D42616467654C6973742D777261703A666F6375732D77697468696E2C0D0A2E742D42616467654C6973742D2D63697263756C617220612E742D42616467654C6973742D777261703A666F637573202E742D';
wwv_flow_api.g_varchar2_table(70) := '42616467654C6973742D76616C75652C0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202332333730';
wwv_flow_api.g_varchar2_table(71) := '633220696E7365742C20302030203020327078202366666666666620696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42616467654C697374';
wwv_flow_api.g_varchar2_table(72) := '2D2D64617368202E742D42616467654C6973742D777261703A666F6375732D77697468696E2C0D0A2E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D76616C756520613A686F766572207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(73) := '726F756E642D636F6C6F723A20236461316231622021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D42616467654C6973742D2D64617368202E742D42616467654C6973742D76';
wwv_flow_api.g_varchar2_table(74) := '616C756520613A666F6375732C0D0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A666F6375732D77697468696E202E742D42616467654C6973742D6C6162656C207B0D0A2020636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(75) := '666666663B0D0A7D0D0A2E742D42616467654C6973742D6974656D3A61667465722C0D0A2E742D42616467654C6973742D6974656D3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E';
wwv_flow_api.g_varchar2_table(76) := '3035293B0D0A7D0D0A2E742D42616467654C6973742D2D6461736820612E742D42616467654C6973742D777261703A686F7665723A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31';
wwv_flow_api.g_varchar2_table(77) := '293B0D0A7D0D0A2E742D42616467654C6973742E752D636F6C6F72732E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D777261703A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(78) := '6666666666663B0D0A7D0D0A2E742D42616467654C6973742E752D636F6C6F72732E742D42616467654C6973742D2D63697263756C6172202E742D42616467654C6973742D6C6162656C207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(79) := '2E742D42616467654C6973742E752D636F6C6F7273202E742D42616467654C6973742D76616C75652061207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4261724368617274202E612D42617243686172742D6974656D207B0D0A';
wwv_flow_api.g_varchar2_table(80) := '2020626F782D736861646F773A2030202D302E3172656D2030207267626128302C20302C20302C20302E30352920696E7365743B0D0A7D0D0A2E612D4261724368617274202E612D42617243686172742D6974656D3A686F766572207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(81) := '6B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D426F6479202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A202337653765';
wwv_flow_api.g_varchar2_table(82) := '37653B0D0A7D0D0A2E742D426F64792D7469746C65202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D426F64';
wwv_flow_api.g_varchar2_table(83) := '792D696E666F202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D526567696F6E202E612D4261724368617274';
wwv_flow_api.g_varchar2_table(84) := '202E612D42617243686172742D6974656D202E612D42617243686172742D76616C75652C0D0A2E742D427574746F6E526567696F6E202E612D4261724368617274202E612D42617243686172742D6974656D202E612D42617243686172742D76616C7565';
wwv_flow_api.g_varchar2_table(85) := '207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E612D4261724368617274202E612D42617243686172742D6974656D20696D67207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E612D426172436861727420';
wwv_flow_api.g_varchar2_table(86) := '2E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6C61';
wwv_flow_api.g_varchar2_table(87) := '62656C2C0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6261724C696E6B2C0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D76616C7565207B0D0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(88) := '646F773A2030202D302E3172656D2030207267626128302C20302C20302C20302E30352920696E7365743B0D0A7D0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6261722C0D0A2E612D42617243686172742D2D';
wwv_flow_api.g_varchar2_table(89) := '636C6173736963202E612D42617243686172742D66696C6C6564207B0D0A2020626F726465722D7261646975733A203170783B0D0A7D0D0A2E612D42617243686172742D2D636C6173736963202E612D42617243686172742D6974656D3A686F76657220';
wwv_flow_api.g_varchar2_table(90) := '2E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D6261722C';
wwv_flow_api.g_varchar2_table(91) := '0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172742D66696C6C6564207B0D0A2020626F726465722D7261646975733A203170783B0D0A7D0D0A2E612D42617243686172742D2D6D6F6465726E202E612D42617243686172';
wwv_flow_api.g_varchar2_table(92) := '742D6974656D3A686F766572202E612D42617243686172742D626172207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D42617243686172742D66696C6C6564207B0D0A20';
wwv_flow_api.g_varchar2_table(93) := '206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A7D0D0A2E617065785F776169745F6F7665726C6179207B0D0A20206261636B67726F756E643A2072676261283235352C203235352C203235352C20302E35293B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(94) := '6479207B0D0A20206261636B67726F756E642D636F6C6F723A20234644464446443B0D0A2020636F6C6F723A20233234323432343B0D0A7D0D0A626F6479202E677269642D64656275672D6F6E202E636F6E7461696E6572207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(95) := '2D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A61207B0D0A2020636F6C6F723A20233233373063323B0D0A7D0D0A2E742D426F64792D616374696F6E73207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(96) := '6C6F723A20236639663966393B0D0A2020626F726465722D6C6566743A2031707820736F6C6964207267626128302C20302C20302C20302E303735293B0D0A7D0D0A2E752D52544C202E742D426F64792D616374696F6E73207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(97) := '2D6C6566743A20303B0D0A2020626F726465722D72696768743A2031707820736F6C6964207267626128302C20302C20302C20302E303735293B0D0A7D0D0A2E742D426F64792D7469746C65207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(98) := '72676261283235352C203235352C203235352C20302E39293B0D0A2020636F6C6F723A20233236323632363B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0D0A2020626F726465722D626F74746F6D2D63';
wwv_flow_api.g_varchar2_table(99) := '6F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D50616765426F64792D2D6D617374657244657461696C2023745F426F64795F636F6E74656E745F6F6666736574207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(100) := '3A2072676261283235352C203235352C203235352C20302E39293B0D0A7D0D0A2E742D50616765426F64792D2D6D617374657244657461696C202E742D426F64792D7469746C652E6861732D736861646F77207B0D0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(101) := '30203170782030207267626128302C20302C20302C20302E303735293B0D0A7D0D0A2E742D50616765426F64792D2D6D617374657244657461696C202E742D426F64792D7469746C652E6861732D736861646F773A6166746572207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(102) := '67726F756E642D696D6167653A206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E3035292C207267626128302C20302C20302C203029293B0D0A7D0D0A2E742D50616765426F64792D2D6D617374657244657461696C20';
wwv_flow_api.g_varchar2_table(103) := '2E617065782D7264732D636F6E7461696E6572207B0D0A2020626F782D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A2E742D50616765426F64792D2D6D61737465724465746169';
wwv_flow_api.g_varchar2_table(104) := '6C202E617065782D7264732D636F6E7461696E65722E69732D737475636B3A6166746572207B0D0A20206261636B67726F756E642D696D6167653A206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E3035292C20726762';
wwv_flow_api.g_varchar2_table(105) := '6128302C20302C20302C203029293B0D0A7D0D0A2E75692D7769646765742D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E75692D7769646765742D636F6E74656E';
wwv_flow_api.g_varchar2_table(106) := '74207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D7469746C65202E75692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D696E666F202E75';
wwv_flow_api.g_varchar2_table(107) := '692D7769646765742D636F6E74656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E75692D7769646765742D636F6E74656E742C0D0A2E742D427574746F6E526567696F6E202E75692D7769646765742D';
wwv_flow_api.g_varchar2_table(108) := '636F6E74656E74207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D73696465207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233234323432343B0D0A7D0D';
wwv_flow_api.g_varchar2_table(109) := '0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E742D426F64792D73696465207B0D0A20202020626F782D736861646F773A2031707820302030207267626128302C20302C2030';
wwv_flow_api.g_varchar2_table(110) := '2C20302E31293B0D0A20207D0D0A20202E752D52544C202E742D426F64792D73696465207B0D0A20202020626F782D736861646F773A202D31707820302030207267626128302C20302C20302C20302E31293B0D0A20207D0D0A7D0D0A2E617065782D72';
wwv_flow_api.g_varchar2_table(111) := '64732D636F6E7461696E6572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D696E666F202E617065782D7264732D636F6E7461696E6572207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(112) := '642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F64792D696E666F202E617065782D7264732D636F6E7461696E65722E69732D737475636B207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C20323535';
wwv_flow_api.g_varchar2_table(113) := '2C203235352C20302E3935293B0D0A20206261636B64726F702D66696C7465723A20626C757228347078293B0D0A7D0D0A2E742D426F64792D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(114) := '2D426F64792D7469746C652E6A732D6869646542726561646372756D6273207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3935293B0D0A7D0D0A2E742D426F64792D746F70427574746F6E207B0D0A';
wwv_flow_api.g_varchar2_table(115) := '2020626F726465722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236536653665363B0D0A2020626F782D736861646F773A2030203020302031707820726762';
wwv_flow_api.g_varchar2_table(116) := '6128302C20302C20302C20302E31293B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365742C2030203170782032707820726762';
wwv_flow_api.g_varchar2_table(117) := '6128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A686F7665722C0D0A2E742D426F64792D746F70427574746F6E3A666F637573207B0D0A2020636F6C6F723A20233233373063323B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(118) := '426F64792D746F70427574746F6E3A686F7665722C0D0A2E742D426F64792D746F70427574746F6E3A616374697665207B0D0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E31352920696E736574';
wwv_flow_api.g_varchar2_table(119) := '3B0D0A7D0D0A2E742D426F64792D746F70427574746F6E3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236536653665363B0D0A7D0D0A2E742D4865616465722D6272616E';
wwv_flow_api.g_varchar2_table(120) := '64696E67207B0D0A20206865696768743A20343870783B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6C696E6B20696D67207B0D0A20206D61782D6865696768743A20343070783B0D0A7D0D0A2E742D426F64792D636F6E74656E74207B0D0A2020';
wwv_flow_api.g_varchar2_table(121) := '6D696E2D6865696768743A2063616C63283130307668202D202034387078293B0D0A7D0D0A2E617065782D736964652D6E6176202E742D426F64792D6E61762C0D0A2E617065782D736964652D6E6176202E742D426F64792D616374696F6E732C0D0A2E';
wwv_flow_api.g_varchar2_table(122) := '617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A2020746F703A20343870783B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F7428';
wwv_flow_api.g_varchar2_table(123) := '2E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E6176202E742D426F64792D7469746C65';
wwv_flow_api.g_varchar2_table(124) := '207B0D0A2020202072696768743A2032343070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D';
wwv_flow_api.g_varchar2_table(125) := '52544C202E617065782D736964652D6E6176202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A2036343170782920';
wwv_flow_api.g_varchar2_table(126) := '7B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964';
wwv_flow_api.g_varchar2_table(127) := '652D6E6176202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032343070783B0D0A20207D0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D6D61696E20';
wwv_flow_api.g_varchar2_table(128) := '7B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E6176202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20303B0D0A7D0D0A2E617065782D746F702D6E617620';
wwv_flow_api.g_varchar2_table(129) := '2E742D426F64792D616374696F6E73207B0D0A2020746F703A20383870783B0D0A7D0D0A2E617065782D746F702D6E6176202E742D426F64792D7469746C65207B0D0A2020746F703A20383870783B0D0A7D0D0A406D65646961206F6E6C792073637265';
wwv_flow_api.g_varchar2_table(130) := '656E20616E6420286D61782D77696474683A20363430707829207B0D0A20202E617065782D746F702D6E61762E6A732D6D656E754E6176436F6C6C6170736564202E742D4865616465722D6E6176207B0D0A202020207472616E73666F726D3A20747261';
wwv_flow_api.g_varchar2_table(131) := '6E736C61746559282D31303025293B0D0A20207D0D0A7D0D0A2E742D426F64792D6E6176207B0D0A202077696474683A2032343070783B0D0A7D0D0A2E742D426F64792D616374696F6E73207B0D0A202077696474683A2032303070783B0D0A7D0D0A3A';
wwv_flow_api.g_varchar2_table(132) := '6E6F74282E752D52544C29202E742D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0D0A20207472616E73666F726D3A207472616E736C6174653364282D343070782C20302C2030293B0D0A7D0D0A2E752D52544C202E';
wwv_flow_api.g_varchar2_table(133) := '742D426F64792D616374696F6E73202E742D427574746F6E2D2D686561646572207B0D0A20207472616E73666F726D3A207472616E736C617465336428343070782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E64';
wwv_flow_api.g_varchar2_table(134) := '20286D696E2D77696474683A20363431707829207B0D0A20202E742D426F64792D73696465207B0D0A2020202077696474683A2032343070783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474';
wwv_flow_api.g_varchar2_table(135) := '683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E6176202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D73696465';
wwv_flow_api.g_varchar2_table(136) := '2D6E6176202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A2E6E6F2D616E696D202E742D426F64792D6E61762C0D0A2E6E6F2D616E696D202E742D547265654E6176207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(137) := '726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A3A6E6F74282E752D52544C29202E61706578';
wwv_flow_api.g_varchar2_table(138) := '2D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D6C6566743A20343870783B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E64';
wwv_flow_api.g_varchar2_table(139) := '6564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A20343870783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E';
wwv_flow_api.g_varchar2_table(140) := '207B0D0A20207472616E73666F726D3A207472616E736C61746533642831393270782C20302C2030293B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A';
wwv_flow_api.g_varchar2_table(141) := '20207472616E73666F726D3A207472616E736C6174653364282D31393270782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20203A6E6F74282E752D52';
wwv_flow_api.g_varchar2_table(142) := '544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F';
wwv_flow_api.g_varchar2_table(143) := '64792D736964652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A';
wwv_flow_api.g_varchar2_table(144) := '20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D7469746C652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64';
wwv_flow_api.g_varchar2_table(145) := '792D736964652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74';
wwv_flow_api.g_varchar2_table(146) := '282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D73696465';
wwv_flow_api.g_varchar2_table(147) := '2D6E61762E6A732D6E6176457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E617645';
wwv_flow_api.g_varchar2_table(148) := '7870616E646564202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A207472616E736C61746533642832343070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E61';
wwv_flow_api.g_varchar2_table(149) := '76457870616E646564202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32343070782C20302C2030293B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420';
wwv_flow_api.g_varchar2_table(150) := '286D696E2D77696474683A20363431707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C652C0D0A20202E617065782D73';
wwv_flow_api.g_varchar2_table(151) := '6964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E742C0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765';
wwv_flow_api.g_varchar2_table(152) := '426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E64';
wwv_flow_api.g_varchar2_table(153) := '65642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E64';
wwv_flow_api.g_varchar2_table(154) := '65642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032343070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E61';
wwv_flow_api.g_varchar2_table(155) := '76457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E61764578';
wwv_flow_api.g_varchar2_table(156) := '70616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176';
wwv_flow_api.g_varchar2_table(157) := '457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2031393270783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E';
wwv_flow_api.g_varchar2_table(158) := '61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2031393270783B0D0A20207D0D0A20203A6E6F74282E752D52';
wwv_flow_api.g_varchar2_table(159) := '544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20343870783B0D0A20207D0D0A';
wwv_flow_api.g_varchar2_table(160) := '20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20343870783B0D';
wwv_flow_api.g_varchar2_table(161) := '0A20207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D73696465207B0D0A202020207472616E73666F726D3A207472616E736C61746533642832343070782C20302C2030293B0D0A20207D0D';
wwv_flow_api.g_varchar2_table(162) := '0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E646564202E742D426F64792D73696465207B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32343070782C20302C2030293B0D0A20';
wwv_flow_api.g_varchar2_table(163) := '207D0D0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A';
wwv_flow_api.g_varchar2_table(164) := '20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A2030';
wwv_flow_api.g_varchar2_table(165) := '3B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D7269676874';
wwv_flow_api.g_varchar2_table(166) := '3A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566';
wwv_flow_api.g_varchar2_table(167) := '743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A2030';
wwv_flow_api.g_varchar2_table(168) := '3B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D6172';
wwv_flow_api.g_varchar2_table(169) := '67696E2D6C6566743A2032383870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B';
wwv_flow_api.g_varchar2_table(170) := '0D0A202020206D617267696E2D72696768743A2032383870783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E';
wwv_flow_api.g_varchar2_table(171) := '742D426F64792D636F6E74656E74207B0D0A202020207472616E73666F726D3A207472616E736C61746533642831393270782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E';
wwv_flow_api.g_varchar2_table(172) := '6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D31393270782C20302C2030293B0D0A20207D0D0A20203A6E6F74282E';
wwv_flow_api.g_varchar2_table(173) := '752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52';
wwv_flow_api.g_varchar2_table(174) := '544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E75';
wwv_flow_api.g_varchar2_table(175) := '2D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020207472616E73666F726D3A207472616E736C6174653364';
wwv_flow_api.g_varchar2_table(176) := '2832343070782C20302C2030293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A2020';
wwv_flow_api.g_varchar2_table(177) := '20207472616E73666F726D3A207472616E736C6174653364282D32343070782C20302C2030293B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20202E617065';
wwv_flow_api.g_varchar2_table(178) := '782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D';
wwv_flow_api.g_varchar2_table(179) := '52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A2020';
wwv_flow_api.g_varchar2_table(180) := '2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D';
wwv_flow_api.g_varchar2_table(181) := '0A20202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020207472616E73666F726D3A206E6F6E652021696D706F7274616E';
wwv_flow_api.g_varchar2_table(182) := '743B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A202020206D617267';
wwv_flow_api.g_varchar2_table(183) := '696E2D6C6566743A2032343070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C65207B0D0A20';
wwv_flow_api.g_varchar2_table(184) := '2020206D617267696E2D72696768743A2032343070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D42';
wwv_flow_api.g_varchar2_table(185) := '6F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2034383070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F77';
wwv_flow_api.g_varchar2_table(186) := '4C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2034383070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E';
wwv_flow_api.g_varchar2_table(187) := '742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E742C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176457870616E6465642E742D50616765426F64792D2D73686F774C656674202E';
wwv_flow_api.g_varchar2_table(188) := '742D426F64792D636F6E74656E74207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A7D0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E61762C0D0A2E617065782D73';
wwv_flow_api.g_varchar2_table(189) := '6964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176202E742D547265654E6176207B0D0A202077696474683A20343870783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D';
wwv_flow_api.g_varchar2_table(190) := '6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E742C0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A3A6E6F74282E752D52';
wwv_flow_api.g_varchar2_table(191) := '544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A20206D617267696E2D6C6566743A20343870783B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A73';
wwv_flow_api.g_varchar2_table(192) := '2D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E742C0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A2E752D52544C202E617065782D73';
wwv_flow_api.g_varchar2_table(193) := '6964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A20206D617267696E2D72696768743A20343870783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176';
wwv_flow_api.g_varchar2_table(194) := '436F6C6C6170736564202E742D426F64792D7469746C652E69732D737475636B207B0D0A20206C6566743A20303B0D0A7D0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D746974';
wwv_flow_api.g_varchar2_table(195) := '6C652E69732D737475636B207B0D0A202072696768743A20303B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E617643';
wwv_flow_api.g_varchar2_table(196) := '6F6C6C6170736564202E742D426F64792D6E6176207B0D0A202020207472616E73666F726D3A207472616E736C61746558282D34387078293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170';
wwv_flow_api.g_varchar2_table(197) := '736564202E742D426F64792D6E6176207B0D0A202020207472616E73666F726D3A207472616E736C617465582834387078293B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170';
wwv_flow_api.g_varchar2_table(198) := '736564202E742D426F64792D7469746C652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E617065';
wwv_flow_api.g_varchar2_table(199) := '782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E';
wwv_flow_api.g_varchar2_table(200) := '6176436F6C6C6170736564202E742D426F64792D7469746C652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D736964652C0D0A20202E752D52544C202E617065782D7369';
wwv_flow_api.g_varchar2_table(201) := '64652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D';
wwv_flow_api.g_varchar2_table(202) := '77696474683A20363430707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D';
wwv_flow_api.g_varchar2_table(203) := '61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792E6A732D7269676874457870616E646564';
wwv_flow_api.g_varchar2_table(204) := '202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20203A6E6F74282E';
wwv_flow_api.g_varchar2_table(205) := '752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D73696465';
wwv_flow_api.g_varchar2_table(206) := '2D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E61';
wwv_flow_api.g_varchar2_table(207) := '76436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D7469';
wwv_flow_api.g_varchar2_table(208) := '746C65207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D';
wwv_flow_api.g_varchar2_table(209) := '426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C65667420';
wwv_flow_api.g_varchar2_table(210) := '2E742D426F64792D73696465207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D';
wwv_flow_api.g_varchar2_table(211) := '2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032383870783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642E74';
wwv_flow_api.g_varchar2_table(212) := '2D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032383870783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E';
wwv_flow_api.g_varchar2_table(213) := '2D77696474683A20393933707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D';
wwv_flow_api.g_varchar2_table(214) := '0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C6170736564202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A2E617065782D736964652D6E61762E6A';
wwv_flow_api.g_varchar2_table(215) := '732D6E6176436F6C6C61707365642D2D68696464656E2E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176207B0D0A202077696474683A20303B0D0A20207669736962696C6974793A2068696464656E3B0D0A7D0D0A2E617065782D73';
wwv_flow_api.g_varchar2_table(216) := '6964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E6A732D6E6176436F6C6C6170736564202E742D426F64792D6E6176202E612D54726565566965772D6261646765207B0D0A20207669736962696C6974793A206869646465';
wwv_flow_api.g_varchar2_table(217) := '6E2021696D706F7274616E743B0D0A7D0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D6E61762C0D0A2E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365';
wwv_flow_api.g_varchar2_table(218) := '642D2D68696464656E202E742D426F64792D6E6176202E742D547265654E6176207B0D0A202077696474683A2032343070783B0D0A7D0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D';
wwv_flow_api.g_varchar2_table(219) := '2D68696464656E202E742D426F64792D636F6E74656E742C0D0A3A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C652C0D0A3A6E6F74282E';
wwv_flow_api.g_varchar2_table(220) := '752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D73696465207B0D0A20206D617267696E2D6C6566743A20303B0D0A7D0D0A2E752D52544C202E617065782D736964';
wwv_flow_api.g_varchar2_table(221) := '652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D636F6E74656E742C0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64';
wwv_flow_api.g_varchar2_table(222) := '792D7469746C652C0D0A2E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D73696465207B0D0A20206D617267696E2D72696768743A20303B0D0A7D0D0A3A6E6F7428';
wwv_flow_api.g_varchar2_table(223) := '2E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C652E69732D737475636B207B0D0A20206C6566743A20303B0D0A7D0D0A2E752D52544C202E61706578';
wwv_flow_api.g_varchar2_table(224) := '2D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C652E69732D737475636B207B0D0A202072696768743A20303B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E642028';
wwv_flow_api.g_varchar2_table(225) := '6D61782D77696474683A20343830707829207B0D0A20202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D6E6176207B0D0A202020207472616E73666F726D3A207472616E736C6174';
wwv_flow_api.g_varchar2_table(226) := '65582830293B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D6E6176207B0D0A202020207472616E73666F726D3A207472616E736C617465';
wwv_flow_api.g_varchar2_table(227) := '582830293B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C652C0D0A20203A6E6F74282E752D52544C29202E6170';
wwv_flow_api.g_varchar2_table(228) := '65782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D6869';
wwv_flow_api.g_varchar2_table(229) := '6464656E202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E74';
wwv_flow_api.g_varchar2_table(230) := '2D426F64792D7469746C652C0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D736964652C0D0A20202E752D52544C202E617065782D736964652D6E6176';
wwv_flow_api.g_varchar2_table(231) := '2E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61';
wwv_flow_api.g_varchar2_table(232) := '782D77696474683A20363430707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E742D50616765426F64792E6A732D7269676874457870616E646564';
wwv_flow_api.g_varchar2_table(233) := '202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E742D50616765426F64';
wwv_flow_api.g_varchar2_table(234) := '792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20';
wwv_flow_api.g_varchar2_table(235) := '363431707829207B0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D6C6566743A20303B';
wwv_flow_api.g_varchar2_table(236) := '0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C65207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20';
wwv_flow_api.g_varchar2_table(237) := '203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E61';
wwv_flow_api.g_varchar2_table(238) := '7065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D';
wwv_flow_api.g_varchar2_table(239) := '6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D73';
wwv_flow_api.g_varchar2_table(240) := '6964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52';
wwv_flow_api.g_varchar2_table(241) := '544C29202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A20';
wwv_flow_api.g_varchar2_table(242) := '32343070783B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E2E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D';
wwv_flow_api.g_varchar2_table(243) := '0A202020206D617267696E2D72696768743A2032343070783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20203A6E6F74282E752D52544C29202E61706578';
wwv_flow_api.g_varchar2_table(244) := '2D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E';
wwv_flow_api.g_varchar2_table(245) := '6A732D6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D73696465207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E617065782D736964652D6E61762E6A732D';
wwv_flow_api.g_varchar2_table(246) := '6E6176436F6C6C61707365642D2D68696464656E202E742D426F64792D73696465207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E752D52544C202E617065782D736964652D6E61762E6A732D6E6176436F6C6C61707365642D2D686964';
wwv_flow_api.g_varchar2_table(247) := '64656E202E742D426F64792D73696465207B0D0A2020202072696768743A20303B0D0A20207D0D0A7D0D0A2E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D726967';
wwv_flow_api.g_varchar2_table(248) := '68743A20303B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6D61696E2C0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D72696768';
wwv_flow_api.g_varchar2_table(249) := '74457870616E646564202E742D426F64792D6E6176207B0D0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D50616765426F64792E6A732D726967687445787061';
wwv_flow_api.g_varchar2_table(250) := '6E646564202E742D426F64792D6D61696E2C0D0A2E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E646564202E742D426F64792D6E6176207B0D0A20207472616E73666F726D3A207472616E736C61746533642832303070';
wwv_flow_api.g_varchar2_table(251) := '782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20363431707829207B0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F6479';
wwv_flow_api.g_varchar2_table(252) := '2D2D686964654C656674202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6E6176207B0D0A20202020747261';
wwv_flow_api.g_varchar2_table(253) := '6E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D61696E207B0D';
wwv_flow_api.g_varchar2_table(254) := '0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C656674202E742D426F64792D6D';
wwv_flow_api.g_varchar2_table(255) := '61696E207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C6566';
wwv_flow_api.g_varchar2_table(256) := '74202E742D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D686964654C6566';
wwv_flow_api.g_varchar2_table(257) := '74202E742D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D7368';
wwv_flow_api.g_varchar2_table(258) := '6F774C656674202E742D426F64792D7469746C65207B0D0A2020202072696768743A20303B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C65';
wwv_flow_api.g_varchar2_table(259) := '6674202E742D426F64792D7469746C65207B0D0A202020206C6566743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E74';
wwv_flow_api.g_varchar2_table(260) := '2D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20303B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E';
wwv_flow_api.g_varchar2_table(261) := '6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D72696768743A20303B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D5061';
wwv_flow_api.g_varchar2_table(262) := '6765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20303B0D0A20207D0D0A20202E75';
wwv_flow_api.g_varchar2_table(263) := '2D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20303B';
wwv_flow_api.g_varchar2_table(264) := '0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20393933707829207B0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E74';
wwv_flow_api.g_varchar2_table(265) := '2D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D72696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D726967687445787061';
wwv_flow_api.g_varchar2_table(266) := '6E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020206D617267696E2D6C6566743A2032303070783B0D0A20207D0D0A20202E742D50616765426F64792E6A732D7269676874457870616E64';
wwv_flow_api.g_varchar2_table(267) := '65642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E2C0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6E';
wwv_flow_api.g_varchar2_table(268) := '6176207B0D0A202020207472616E73666F726D3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E74';
wwv_flow_api.g_varchar2_table(269) := '2D426F64792D7469746C65207B0D0A2020202072696768743A2032303070783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E74';
wwv_flow_api.g_varchar2_table(270) := '2D426F64792D7469746C65207B0D0A202020206C6566743A2032303070783B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E6176436F6C6C61707365642E742D';
wwv_flow_api.g_varchar2_table(271) := '50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206C6566743A20343870783B0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E6A732D6E61';
wwv_flow_api.g_varchar2_table(272) := '76436F6C6C61707365642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A2020202072696768743A20343870783B0D0A20207D0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61';
wwv_flow_api.g_varchar2_table(273) := '782D77696474683A20393932707829207B0D0A20202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D6D61696E207B0D0A202020207472616E73666F726D';
wwv_flow_api.g_varchar2_table(274) := '3A206E6F6E653B0D0A20207D0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0D0A20203A6E6F';
wwv_flow_api.g_varchar2_table(275) := '74282E752D52544C29202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D736964652C0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64';
wwv_flow_api.g_varchar2_table(276) := '792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B';
wwv_flow_api.g_varchar2_table(277) := '0D0A20207D0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D7469746C652C0D0A20202E752D52544C202E742D50616765426F';
wwv_flow_api.g_varchar2_table(278) := '64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D736964652C0D0A20202E752D52544C202E742D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765';
wwv_flow_api.g_varchar2_table(279) := '426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A20207D0D0A20202E742D50616765426F64792E6A732D7269';
wwv_flow_api.g_varchar2_table(280) := '676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20343870782021696D706F7274616E743B0D0A20207D0D0A20202E752D52544C202E74';
wwv_flow_api.g_varchar2_table(281) := '2D50616765426F64792E6A732D7269676874457870616E6465642E742D50616765426F64792D2D73686F774C656674202E742D426F64792D73696465207B0D0A202020206D617267696E2D6C6566743A20302021696D706F7274616E743B0D0A20202020';
wwv_flow_api.g_varchar2_table(282) := '72696768743A20343870782021696D706F7274616E743B0D0A20207D0D0A7D0D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D6D61696E207B0D0A20206D617267696E2D72696768743A203070783B0D';
wwv_flow_api.g_varchar2_table(283) := '0A7D0D0A2E742D50616765426F64792E6A732D7269676874436F6C6C6170736564202E742D426F64792D7469746C65207B0D0A202072696768743A203070783B0D0A7D0D0A3A6E6F74282E752D52544C29202E742D50616765426F64792E6A732D726967';
wwv_flow_api.g_varchar2_table(284) := '6874436F6C6C6170736564202E742D426F64792D616374696F6E73207B0D0A20207472616E73666F726D3A207472616E736C61746533642832303070782C20302C2030293B0D0A7D0D0A2E752D52544C202E742D50616765426F64792E6A732D72696768';
wwv_flow_api.g_varchar2_table(285) := '74436F6C6C6170736564202E742D426F64792D616374696F6E73207B0D0A20207472616E73666F726D3A207472616E736C6174653364282D32303070782C20302C2030293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D69';
wwv_flow_api.g_varchar2_table(286) := '6E2D77696474683A20363431707829207B0D0A20203A6E6F74282E752D52544C29202E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D6C6566743A2032343070783B0D0A';
wwv_flow_api.g_varchar2_table(287) := '20207D0D0A20202E752D52544C202E742D50616765426F64792D2D73686F774C656674202E742D426F64792D636F6E74656E74207B0D0A202020206D617267696E2D72696768743A2032343070783B0D0A20207D0D0A7D0D0A2E742D426F64792D636F6E';
wwv_flow_api.g_varchar2_table(288) := '74656E74496E6E6572207B0D0A20206D617267696E3A2030206175746F3B0D0A20206D61782D77696474683A20313030253B0D0A7D0D0A23745F426F64795F736B6970546F436F6E74656E74207B0D0A2020636F6C6F723A20236461316231623B0D0A20';
wwv_flow_api.g_varchar2_table(289) := '206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D42726561646372756D622D6974656D3A6166746572207B0D0A2020636F6C6F723A20726762612833362C2033362C2033362C20302E3735293B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(290) := '42726561646372756D622D6974656D2C0D0A2E742D42726561646372756D622D6974656D2061207B0D0A2020636F6C6F723A20233537353735373B0D0A7D0D0A2E742D42726561646372756D622D6974656D20613A686F7665722C0D0A2E742D42726561';
wwv_flow_api.g_varchar2_table(291) := '646372756D622D6974656D20613A666F637573207B0D0A2020636F6C6F723A20233233373063323B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A2E742D426F64';
wwv_flow_api.g_varchar2_table(292) := '792D7469746C652D736872696E6B202E742D42726561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D426F64792D7469746C652D';
wwv_flow_api.g_varchar2_table(293) := '736872696E6B202E742D42726561646372756D62526567696F6E2D2D757365526567696F6E5469746C65202E742D42726561646372756D62526567696F6E2D7469746C6554657874207B0D0A2020636F6C6F723A20233234323432343B0D0A7D0D0A406D';
wwv_flow_api.g_varchar2_table(294) := '65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20363430707829207B0D0A20202E742D42726561646372756D62526567696F6E2D2D757365526567696F6E5469746C65202E742D42726561646372756D62526567696F6E';
wwv_flow_api.g_varchar2_table(295) := '2D7469746C6554657874207B0D0A20202020636F6C6F723A20233234323432343B0D0A20207D0D0A7D0D0A2E742D42726561646372756D622D6974656D202E742D49636F6E3A686F766572207B0D0A2020636F6C6F723A20236461316231623B0D0A7D0D';
wwv_flow_api.g_varchar2_table(296) := '0A2E742D42726561646372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D42726561646372756D62526567696F6E2D7469746C65546578';
wwv_flow_api.g_varchar2_table(297) := '74207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D426F64792D7469746C65202E742D42726561646372756D622D6974656D3A6166746572207B0D0A2020636F6C6F723A20726762612833382C2033382C2033382C20302E373529';
wwv_flow_api.g_varchar2_table(298) := '3B0D0A7D0D0A2E742D426F64792D7469746C65202E742D42726561646372756D622D6974656D2C0D0A2E742D426F64792D7469746C65202E742D42726561646372756D622D6974656D20612C0D0A2E742D426F64792D7469746C65202E742D4272656164';
wwv_flow_api.g_varchar2_table(299) := '6372756D62526567696F6E2D2D75736542726561646372756D625469746C65202E742D42726561646372756D622D6974656D2E69732D6163746976652C0D0A2E742D426F64792D7469746C65202E742D42726561646372756D62526567696F6E2D746974';
wwv_flow_api.g_varchar2_table(300) := '6C6554657874207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D427574746F6E2C0D0A2E612D427574746F6E2C0D0A2E75692D627574746F6E207B0D0A2020626F726465723A206E6F6E653B0D0A2020746578742D736861646F77';
wwv_flow_api.g_varchar2_table(301) := '3A206E6F6E653B0D0A2020626F726465722D7261646975733A203270783B0D0A20207472616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E327320656173652C20626F782D736861646F7720302E327320656173652C20636F6C6F';
wwv_flow_api.g_varchar2_table(302) := '7220302E327320656173653B0D0A7D0D0A2E742D427574746F6E202E742D49636F6E2C0D0A2E612D427574746F6E202E742D49636F6E2C0D0A2E75692D627574746F6E202E742D49636F6E207B0D0A20207472616E736974696F6E3A20696E6865726974';
wwv_flow_api.g_varchar2_table(303) := '3B0D0A7D0D0A2E742D427574746F6E3A686F7665722C0D0A2E612D427574746F6E3A686F7665722C0D0A2E75692D627574746F6E3A686F7665722C0D0A2E742D427574746F6E3A666F6375732C0D0A2E612D427574746F6E3A666F6375732C0D0A2E7569';
wwv_flow_api.g_varchar2_table(304) := '2D627574746F6E3A666F637573207B0D0A20207A2D696E6465783A203130303B0D0A20206F75746C696E653A206E6F6E652021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E3A666F6375733A6265666F72652C0D0A2E612D427574746F6E';
wwv_flow_api.g_varchar2_table(305) := '3A666F6375733A6265666F72652C0D0A2E75692D627574746F6E3A666F6375733A6265666F72652C0D0A2E742D427574746F6E2E69732D6163746976653A666F6375733A6265666F72652C0D0A2E612D427574746F6E2E69732D6163746976653A666F63';
wwv_flow_api.g_varchar2_table(306) := '75733A6265666F72652C0D0A2E75692D627574746F6E2E69732D6163746976653A666F6375733A6265666F7265207B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365742021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(307) := '20206F7061636974793A20313B0D0A7D0D0A2E742D427574746F6E3A666F6375733A6163746976653A6265666F72652C0D0A2E612D427574746F6E3A666F6375733A6163746976653A6265666F72652C0D0A2E75692D627574746F6E3A666F6375733A61';
wwv_flow_api.g_varchar2_table(308) := '63746976653A6265666F72652C0D0A2E742D427574746F6E2E69732D6163746976653A666F6375733A6163746976653A6265666F72652C0D0A2E612D427574746F6E2E69732D6163746976653A666F6375733A6163746976653A6265666F72652C0D0A2E';
wwv_flow_api.g_varchar2_table(309) := '75692D627574746F6E2E69732D6163746976653A666F6375733A6163746976653A6265666F7265207B0D0A20206F7061636974793A20303B0D0A7D0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A6E6F74282E742D42';
wwv_flow_api.g_varchar2_table(310) := '7574746F6E2D2D686561646572293A6163746976652C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A6E6F74282E742D427574746F6E2D2D686561646572292E69732D616374697665207B0D0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(311) := '646F773A20302030203020317078207267626128302C20302C20302C20302E31352920696E7365742C20302032707820327078207267626128302C20302C20302C20302E31352920696E7365742021696D706F7274616E743B0D0A7D0D0A2E612D427574';
wwv_flow_api.g_varchar2_table(312) := '746F6E3A6265666F72652C0D0A2E742D427574746F6E3A6265666F72652C0D0A2E75692D627574746F6E3A6265666F72652C0D0A2E612D427574746F6E3A61667465722C0D0A2E742D427574746F6E3A61667465722C0D0A2E75692D627574746F6E3A61';
wwv_flow_api.g_varchar2_table(313) := '66746572207B0D0A2020636F6E74656E743A2027273B0D0A2020706F736974696F6E3A206162736F6C7574653B0D0A2020746F703A20303B0D0A20206C6566743A20303B0D0A202077696474683A20313030253B0D0A20206865696768743A2031303025';
wwv_flow_api.g_varchar2_table(314) := '3B0D0A2020626F726465722D7261646975733A20696E68657269743B0D0A20206F7061636974793A20303B0D0A20207472616E736974696F6E3A20302E327320656173653B0D0A7D0D0A2E612D427574746F6E3A6265666F72652C0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(315) := '6F6E3A6265666F72652C0D0A2E75692D627574746F6E3A6265666F7265207B0D0A20207A2D696E6465783A20313B0D0A7D0D0A2E612D427574746F6E3A61667465722C0D0A2E742D427574746F6E3A61667465722C0D0A2E75692D627574746F6E3A6166';
wwv_flow_api.g_varchar2_table(316) := '746572207B0D0A20207A2D696E6465783A202D313B0D0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E303735293B0D0A20207472616E73666F726D3A207472616E736C61746559282D327078293B';
wwv_flow_api.g_varchar2_table(317) := '0D0A7D0D0A2E612D427574746F6E3A666F6375733A61667465722C0D0A2E742D427574746F6E3A666F6375733A61667465722C0D0A2E75692D627574746F6E3A666F6375733A61667465722C0D0A2E612D427574746F6E3A6E6F74282E742D427574746F';
wwv_flow_api.g_varchar2_table(318) := '6E2D2D6C696E6B293A686F7665723A61667465722C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A686F7665723A61667465722C0D0A2E75692D627574746F6E3A6E6F74282E742D427574746F6E2D2D6C696E6B293A';
wwv_flow_api.g_varchar2_table(319) := '686F7665723A6166746572207B0D0A20206F7061636974793A20313B0D0A20207472616E73666F726D3A207472616E736C617465592830293B0D0A7D0D0A2E612D427574746F6E3A666F6375733A6163746976653A61667465722C0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(320) := '6F6E3A666F6375733A6163746976653A61667465722C0D0A2E75692D627574746F6E3A666F6375733A6163746976653A6166746572207B0D0A20206F7061636974793A20303B0D0A20207472616E73666F726D3A207472616E736C61746559282D327078';
wwv_flow_api.g_varchar2_table(321) := '293B0D0A7D0D0A2E612D427574746F6E3A666F6375733A61667465722C0D0A2E742D427574746F6E3A666F6375733A61667465722C0D0A2E75692D627574746F6E3A666F6375733A6166746572207B0D0A20207472616E73666F726D3A207472616E736C';
wwv_flow_api.g_varchar2_table(322) := '617465592830293B0D0A2020626F782D736861646F773A20302030203170782031707820726762612833352C203131322C203139342C20302E3235293B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F';
wwv_flow_api.g_varchar2_table(323) := '6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C2C0D0A2E742D427574746F6E3A6E6F74282E742D42757474';
wwv_flow_api.g_varchar2_table(324) := '6F6E2D2D73696D706C65292C0D0A2E75692D627574746F6E2C0D0A2E612D427574746F6E2C0D0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F56207B0D0A2020636F6C6F723A20233338333833383B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(325) := '6E642D636F6C6F723A20236638663866383B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D';
wwv_flow_api.g_varchar2_table(326) := '726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C3A686F7665722C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C3A686F7665722C0D';
wwv_flow_api.g_varchar2_table(327) := '0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A686F7665722C0D0A2E75692D627574746F6E3A686F7665722C0D0A2E612D427574746F6E3A686F7665722C0D0A2E612D427574746F6E2E612D427574746F6E2D2D70';
wwv_flow_api.g_varchar2_table(328) := '6F7075704C4F563A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E31352920696E7365743B0D0A7D';
wwv_flow_api.g_varchar2_table(329) := '0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C3A666F6375732C0D0A2E617065782D627574746F6E2D67';
wwv_flow_api.g_varchar2_table(330) := '726F757020696E707574202B206C6162656C3A666F6375732C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A666F6375732C0D0A2E75692D627574746F6E3A666F6375732C0D0A2E612D427574746F6E3A666F63';
wwv_flow_api.g_varchar2_table(331) := '75732C0D0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F563A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D';
wwv_flow_api.g_varchar2_table(332) := '726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C2E69732D6163746976652C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C2E69732D';
wwv_flow_api.g_varchar2_table(333) := '6163746976652C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65292E69732D6163746976652C0D0A2E75692D627574746F6E2E69732D6163746976652C0D0A2E612D427574746F6E2E69732D6163746976652C0D0A2E';
wwv_flow_api.g_varchar2_table(334) := '612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F562E69732D6163746976652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D72';
wwv_flow_api.g_varchar2_table(335) := '6320696E707574202B206C6162656C3A6163746976652C0D0A2E617065782D627574746F6E2D67726F757020696E707574202B206C6162656C3A6163746976652C0D0A2E742D427574746F6E3A6E6F74282E742D427574746F6E2D2D73696D706C65293A';
wwv_flow_api.g_varchar2_table(336) := '6163746976652C0D0A2E75692D627574746F6E3A6163746976652C0D0A2E612D427574746F6E3A6163746976652C0D0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F563A616374697665207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(337) := '636F6C6F723A20236465646564653B0D0A7D0D0A2E75692D627574746F6E3A686F766572207B0D0A2020636F6C6F723A20233338333833383B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F';
wwv_flow_api.g_varchar2_table(338) := '7570202E617065782D6974656D2D67726964207B0D0A20206261636B67726F756E642D636F6C6F723A20236438643864383B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E6572';
wwv_flow_api.g_varchar2_table(339) := '2D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A616374697665202B206C6162656C2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E4772';
wwv_flow_api.g_varchar2_table(340) := '6F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A666F6375733A6E6F74283A636865636B656429202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A616374697665202B206C6162656C';
wwv_flow_api.g_varchar2_table(341) := '2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A666F6375733A6E6F74283A636865636B656429202B206C6162656C207B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365742C203020';
wwv_flow_api.g_varchar2_table(342) := '30203020327078202366396639663920696E7365742021696D706F7274616E743B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F726465722D636F6C6F723A20233233373063323B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461';
wwv_flow_api.g_varchar2_table(343) := '696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B65643A666F637573202B206C6162656C2C0D0A2E617065782D627574746F6E2D67726F757020696E7075743A63';
wwv_flow_api.g_varchar2_table(344) := '6865636B65643A666F637573202B206C6162656C207B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365742C20302030203020327078202366396639663920696E7365742021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(345) := '7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726F75702D2D726320696E7075743A636865636B6564202B206C6162656C2C0D0A2E617065782D627574746F';
wwv_flow_api.g_varchar2_table(346) := '6E2D67726F757020696E7075743A636865636B6564202B206C6162656C207B0D0A2020626F726465722D636F6C6F723A20233233373063323B0D0A20206261636B67726F756E642D636F6C6F723A20233233373063323B0D0A2020636F6C6F723A202366';
wwv_flow_api.g_varchar2_table(347) := '66666666663B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E612D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65292C0D0A626F6479202E75692D6275';
wwv_flow_api.g_varchar2_table(348) := '74746F6E2E75692D627574746F6E2D2D686F742C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D617279207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020';
wwv_flow_api.g_varchar2_table(349) := '636F6C6F723A20236666666666663B0D0A7D0D0A2E612D427574746F6E2D2D686F743A686F7665722C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65293A686F7665722C0D0A626F6479202E75692D6275';
wwv_flow_api.g_varchar2_table(350) := '74746F6E2E75692D627574746F6E2D2D686F743A686F7665722C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A686F7665722C0D0A2E612D427574746F6E2D2D686F743A6E6F74283A61';
wwv_flow_api.g_varchar2_table(351) := '6374697665293A666F6375732C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74283A616374697665293A666F6375732C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D';
wwv_flow_api.g_varchar2_table(352) := '2D686F743A6E6F74283A616374697665293A666F6375732C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(353) := '756E642D636F6C6F723A20236535326132613B0D0A7D0D0A2E612D427574746F6E2D2D686F743A6163746976652C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65293A6163746976652C0D0A626F647920';
wwv_flow_api.g_varchar2_table(354) := '2E75692D627574746F6E2E75692D627574746F6E2D2D686F743A6163746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172793A6163746976652C0D0A2E612D427574746F6E2D2D686F';
wwv_flow_api.g_varchar2_table(355) := '742E69732D6163746976652C0D0A2E742D427574746F6E2D2D686F743A6E6F74282E742D427574746F6E2D2D73696D706C65292E69732D6163746976652C0D0A626F6479202E75692D627574746F6E2E75692D627574746F6E2D2D686F742E69732D6163';
wwv_flow_api.g_varchar2_table(356) := '746976652C0D0A626F6479202E75692D73746174652D64656661756C742E75692D7072696F726974792D7072696D6172792E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236333313831383B0D0A7D0D0A626F6479';
wwv_flow_api.g_varchar2_table(357) := '202E75692D627574746F6E2E75692D627574746F6E2D2D686F74207B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74';
wwv_flow_api.g_varchar2_table(358) := '282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D68';
wwv_flow_api.g_varchar2_table(359) := '6F74293A686F7665722C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261';
wwv_flow_api.g_varchar2_table(360) := '636B67726F756E642D636F6C6F723A20236663646337633B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(361) := '6F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D7369';
wwv_flow_api.g_varchar2_table(362) := '6D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A7D0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D4275';
wwv_flow_api.g_varchar2_table(363) := '74746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C6529';
wwv_flow_api.g_varchar2_table(364) := '3A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74283A61637469';
wwv_flow_api.g_varchar2_table(365) := '7665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20233432626533313B0D0A7D0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F';
wwv_flow_api.g_varchar2_table(366) := '6E2D2D686F74292C0D0A2E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D427574746F6E2D2D737563636573733A';
wwv_flow_api.g_varchar2_table(367) := '6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233342414132433B0D0A7D0D0A2E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(368) := '64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D';
wwv_flow_api.g_varchar2_table(369) := '427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(370) := '686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236635356134653B0D0A7D0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C6529';
wwv_flow_api.g_varchar2_table(371) := '3A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A6163746976652C0D0A2E742D42757474';
wwv_flow_api.g_varchar2_table(372) := '6F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(373) := '2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020636F6C6F723A20233362303730373B0D0A7D0D0A2E742D427574746F6E2D2D7072';
wwv_flow_api.g_varchar2_table(374) := '696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E';
wwv_flow_api.g_varchar2_table(375) := '6F74282E742D427574746F6E2D2D686F74293A6E6F74283A616374697665293A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A20236662646664663B0D0A7D0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D';
wwv_flow_api.g_varchar2_table(376) := '427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74293A';
wwv_flow_api.g_varchar2_table(377) := '6163746976652C0D0A2E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D73696D706C65293A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(378) := '6F723A20236638633963393B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279';
wwv_flow_api.g_varchar2_table(379) := '293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E6729207B0D0A20206261636B67726F756E642D636F6C6F723A20234646464646463B0D0A2020636F6C6F723A20233430343034303B';
wwv_flow_api.g_varchar2_table(380) := '0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F7428';
wwv_flow_api.g_varchar2_table(381) := '2E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67293A686F7665722C0D0A2E';
wwv_flow_api.g_varchar2_table(382) := '742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E676572293A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73';
wwv_flow_api.g_varchar2_table(383) := '756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C653A6E6F74282E742D427574746F6E2D2D686F74293A6E6F74282E742D427574746F6E2D2D64616E67657229';
wwv_flow_api.g_varchar2_table(384) := '3A6E6F74282E742D427574746F6E2D2D7072696D617279293A6E6F74282E742D427574746F6E2D2D73756363657373293A6E6F74282E742D427574746F6E2D2D7761726E696E67292E69732D616374697665207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(385) := '6F6C6F723A20236536653665363B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F74207B0D0A2020626F782D736861646F773A20302030203020317078202364613162316220696E7365743B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(386) := '67726F756E642D636F6C6F723A20234646464646463B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F74202E742D49636F6E';
wwv_flow_api.g_varchar2_table(387) := '207B0D0A2020636F6C6F723A20236461316231623B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A666F';
wwv_flow_api.g_varchar2_table(388) := '6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(389) := '7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A666F637573202E742D49636F6E2C0D0A2E';
wwv_flow_api.g_varchar2_table(390) := '742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F742E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E';
wwv_flow_api.g_varchar2_table(391) := '2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202366386339633920696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A2023464646464646';
wwv_flow_api.g_varchar2_table(392) := '3B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A';
wwv_flow_api.g_varchar2_table(393) := '6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20236561353735373B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D42757474';
wwv_flow_api.g_varchar2_table(394) := '6F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E74';
wwv_flow_api.g_varchar2_table(395) := '2D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236638633963393B0D0A2020636F6C6F723A20233362303730373B0D0A7D';
wwv_flow_api.g_varchar2_table(396) := '0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E';
wwv_flow_api.g_varchar2_table(397) := '2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D6172793A6E6F74282E742D427574746F6E2D2D686F74';
wwv_flow_api.g_varchar2_table(398) := '292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20233362303730373B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F7429';
wwv_flow_api.g_varchar2_table(399) := '207B0D0A2020626F782D736861646F773A20302030203020317078202346424345344120696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20234646464646463B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574';
wwv_flow_api.g_varchar2_table(400) := '746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B';
wwv_flow_api.g_varchar2_table(401) := '0D0A2020636F6C6F723A20236331393130343B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73';
wwv_flow_api.g_varchar2_table(402) := '696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F';
wwv_flow_api.g_varchar2_table(403) := '6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(404) := '2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F7429';
wwv_flow_api.g_varchar2_table(405) := '3A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7761726E696E673A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(406) := '723A20233434333330323B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202366';
wwv_flow_api.g_varchar2_table(407) := '343433333620696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20234646464646463B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74';
wwv_flow_api.g_varchar2_table(408) := '292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20236634343333363B0D0A7D0D0A2E742D427574746F';
wwv_flow_api.g_varchar2_table(409) := '6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574';
wwv_flow_api.g_varchar2_table(410) := '746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(411) := '6F6C6F723A20236634343333363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E';
wwv_flow_api.g_varchar2_table(412) := '742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D';
wwv_flow_api.g_varchar2_table(413) := '427574746F6E2D2D64616E6765723A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D4275';
wwv_flow_api.g_varchar2_table(414) := '74746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F7429207B0D0A2020626F782D736861646F773A20302030203020317078202333424141324320696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A20234646';
wwv_flow_api.g_varchar2_table(415) := '464646463B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74292C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D73756363';
wwv_flow_api.g_varchar2_table(416) := '6573733A6E6F74282E742D427574746F6E2D2D686F7429202E742D49636F6E207B0D0A2020636F6C6F723A20233362616132633B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D';
wwv_flow_api.g_varchar2_table(417) := '427574746F6E2D2D686F74293A686F7665722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A666F6375732C0D0A2E742D427574746F6E2D2D73696D70';
wwv_flow_api.g_varchar2_table(418) := '6C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74292E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233342414132433B0D0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(419) := '3B0D0A7D0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A686F766572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D4275';
wwv_flow_api.g_varchar2_table(420) := '74746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D2D686F74293A666F637573202E742D49636F6E2C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A6E6F74282E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(421) := '2D686F74292E69732D616374697665202E742D49636F6E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2D2D6E6F5549207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E7420';
wwv_flow_api.g_varchar2_table(422) := '21696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A6E6F74283A686F766572293A6E6F74283A666F637573293A6E6F74282E69732D61637469766529207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(423) := '742D427574746F6E2D2D6E6F55493A686F7665722C0D0A2E742D427574746F6E2D2D6E6F55493A666F6375732C0D0A2E742D427574746F6E2D2D6E6F55492E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A2023653665';
wwv_flow_api.g_varchar2_table(424) := '3665363B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55493A666F6375733A686F766572207B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A2E742D42';
wwv_flow_api.g_varchar2_table(425) := '7574746F6E2D2D6C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A2020626F782D736861646F773A206E6F6E652021696D706F7274616E743B0D0A7D0D0A2E742D4275';
wwv_flow_api.g_varchar2_table(426) := '74746F6E2D2D6C696E6B3A686F766572207B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2C0D0A2E742D427574746F6E2D2D6C696E6B202E742D';
wwv_flow_api.g_varchar2_table(427) := '49636F6E207B0D0A2020636F6C6F723A20233233373063323B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F742C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D686F74202E742D49636F6E20';
wwv_flow_api.g_varchar2_table(428) := '7B0D0A2020636F6C6F723A20236461316231623B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D6172792C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7072696D6172792C0D0A2E742D';
wwv_flow_api.g_varchar2_table(429) := '427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7072696D617279202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7072696D617279202E742D49636F6E207B0D0A2020636F6C6F723A202365613537';
wwv_flow_api.g_varchar2_table(430) := '35372021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D7761726E696E672C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7761726E696E672C0D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(431) := '2D2D6E6F55492E742D427574746F6E2D2D7761726E696E67202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D7761726E696E67202E742D49636F6E207B0D0A2020636F6C6F723A20236331393130342021696D';
wwv_flow_api.g_varchar2_table(432) := '706F7274616E743B0D0A7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D64616E6765722C0D0A2E742D427574746F6E2D2D6E6F55492E74';
wwv_flow_api.g_varchar2_table(433) := '2D427574746F6E2D2D64616E676572202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D64616E676572202E742D49636F6E207B0D0A2020636F6C6F723A20236634343333362021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(434) := '7D0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D2D737563636573732C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D737563636573732C0D0A2E742D427574746F6E2D2D6E6F55492E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(435) := '2D73756363657373202E742D49636F6E2C0D0A2E742D427574746F6E2D2D6C696E6B2E742D427574746F6E2D2D73756363657373202E742D49636F6E207B0D0A2020636F6C6F723A20233362616132632021696D706F7274616E743B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(436) := '4865616465722D6272616E64696E67202E742D427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D686561646572207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(437) := '726465722D7261646975733A203270783B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A6265666F72652C0D0A2E742D427574746F6E2E742D427574';
wwv_flow_api.g_varchar2_table(438) := '746F6E2D2D6865616465723A6163746976653A666F6375733A6265666F7265207B0D0A2020626F782D736861646F773A20302030203020317078202335323937653020696E7365742021696D706F7274616E743B0D0A7D0D0A2E742D427574746F6E2E74';
wwv_flow_api.g_varchar2_table(439) := '2D427574746F6E2D2D6865616465723A686F7665722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375732C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A616374697665207B0D0A20206261';
wwv_flow_api.g_varchar2_table(440) := '636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20';
wwv_flow_api.g_varchar2_table(441) := '302C20302E31293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A6163746976652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465723A666F6375733A616374697665207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(442) := '6F756E642D636F6C6F723A207267626128302C20302C20302C20302E34293B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261';
wwv_flow_api.g_varchar2_table(443) := '28302C20302C20302C20302E3235293B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657254726565207B0D0A20206D696E2D77696474683A20333270783B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(444) := '742D427574746F6E2E742D427574746F6E2D2D686561646572547265653A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202335323937653020696E7365743B0D0A7D0D0A406D65646961206F6E6C792073637265656E';
wwv_flow_api.g_varchar2_table(445) := '20616E6420286D61782D77696474683A20343830707829207B0D0A20202E742D427574746F6E2E742D427574746F6E2D2D68656164657254726565207B0D0A202020206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C2030';
wwv_flow_api.g_varchar2_table(446) := '2E3235293B0D0A20207D0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6865616465725269676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F726465723A2031707820736F6C696420';
wwv_flow_api.g_varchar2_table(447) := '236530653065303B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657252696768743A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236530653065303B0D0A7D0D0A2E742D427574746F6E2E742D42';
wwv_flow_api.g_varchar2_table(448) := '7574746F6E2D2D68656164657252696768743A6163746976652C0D0A2E742D427574746F6E2E742D427574746F6E2D2D68656164657252696768742E69732D616374697665207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D4275';
wwv_flow_api.g_varchar2_table(449) := '74746F6E2D2D6E6176426172202E742D427574746F6E2D6261646765207B0D0A2020626F726465722D7261646975733A20313670783B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3335293B0D0A7D0D';
wwv_flow_api.g_varchar2_table(450) := '0A2E742D427574746F6E2D2D68656C70427574746F6E202E612D49636F6E207B0D0A20206F7061636974793A20302E353B0D0A7D0D0A2E742D4865616465722D6E6176426172202E742D427574746F6E2D2D6865616465722E69732D616374697665207B';
wwv_flow_api.g_varchar2_table(451) := '0D0A20206261636B67726F756E642D636F6C6F723A20233936313331333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D427574746F6E2E742D427574746F6E2D2D6E6F5549202E66613A61667465722C0D0A2E742D427574746F6E';
wwv_flow_api.g_varchar2_table(452) := '2E742D427574746F6E2D2D6C696E6B202E66613A61667465722C0D0A2E742D427574746F6E2E742D427574746F6E2D2D73696D706C65202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(453) := '2D427574746F6E2D2D64616E676572202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D64616E6765723A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(454) := '3A20236634343333363B0D0A7D0D0A2E742D427574746F6E2D2D73756363657373202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D737563636573733A686F766572202E66613A6166746572207B0D';
wwv_flow_api.g_varchar2_table(455) := '0A20206261636B67726F756E642D636F6C6F723A20233342414132433B0D0A7D0D0A2E742D427574746F6E2D2D7072696D617279202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D7072696D617279';
wwv_flow_api.g_varchar2_table(456) := '3A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236638633963393B0D0A7D0D0A2E742D427574746F6E2D2D7761726E696E67202E66613A61667465722C0D0A2E742D427574746F6E2D2D73696D706C';
wwv_flow_api.g_varchar2_table(457) := '652E742D427574746F6E2D2D7761726E696E673A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A7D0D0A2E742D427574746F6E2D2D686F74202E66613A61667465722C0D0A2E';
wwv_flow_api.g_varchar2_table(458) := '742D427574746F6E2D2D73696D706C652E742D427574746F6E2D2D686F743A686F766572202E66613A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A7D0D0A2E742D426F64792D616374696F6E73546F';
wwv_flow_api.g_varchar2_table(459) := '67676C65207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A2020626F726465722D72696768742D636F6C6F723A2074';
wwv_flow_api.g_varchar2_table(460) := '72616E73706172656E743B0D0A2020636F6C6F723A20696E697469616C3B0D0A7D0D0A2E752D52544C202E742D426F64792D616374696F6E73546F67676C65207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E30';
wwv_flow_api.g_varchar2_table(461) := '3735293B0D0A2020626F726465722D6C6566742D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73546F67676C653A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A2023653065';
wwv_flow_api.g_varchar2_table(462) := '3065303B0D0A7D0D0A2E742D426F64792D616374696F6E73546F67676C653A666F6375732C0D0A2E742D426F64792D616374696F6E73546F67676C653A616374697665207B0D0A2020626F726465722D636F6C6F723A20233233373063323B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(463) := '2E742D427574746F6E526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233236323632363B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(464) := '636F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A2020626F782D736861646F773A20302032707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D6E6F5549';
wwv_flow_api.g_varchar2_table(465) := '207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D77697A6172642C0D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0D0A';
wwv_flow_api.g_varchar2_table(466) := '2020626F726465722D7261646975733A2030203020327078203270783B0D0A7D0D0A2E742D427574746F6E526567696F6E2D2D6469616C6F67526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D';
wwv_flow_api.g_varchar2_table(467) := '0A7D0D0A2E742D426F6479202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D7469746C6520';
wwv_flow_api.g_varchar2_table(468) := '2E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D696E666F202E742D427574746F6E52656769';
wwv_flow_api.g_varchar2_table(469) := '6F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E74';
wwv_flow_api.g_varchar2_table(470) := '2D427574746F6E526567696F6E2D7469746C652C0D0A2E742D427574746F6E526567696F6E202E742D427574746F6E526567696F6E2D2D73686F775469746C65202E742D427574746F6E526567696F6E2D7469746C65207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(471) := '3430343034303B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D427574746F6E526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D7261646975733A20303B';
wwv_flow_api.g_varchar2_table(472) := '0D0A7D0D0A2E742D4469616C6F672D666F6F746572202E742D427574746F6E526567696F6E207B0D0A2020626F726465722D746F702D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E66632E75692D77696467657420';
wwv_flow_api.g_varchar2_table(473) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E66632D746F6F6C626172207B0D0A2020626F726465722D636F6C6F723A20236562656265623B0D0A20206261636B67726F756E642D636F6C6F723A20236666';
wwv_flow_api.g_varchar2_table(474) := '666666663B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E66632D746F6F6C6261722068322C0D0A2E6663202E66632D62617369632D766965772074642E66632D6461792D6E756D6265722C0D0A2E666320';
wwv_flow_api.g_varchar2_table(475) := '2E66632D6461792D6E756D626572207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E66632D6461792D6865616465722E75692D7769646765742D6865616465722C0D0A2E66632D76696577202E75692D7769646765742D686561646572';
wwv_flow_api.g_varchar2_table(476) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A2020636F6C6F723A20233236323632363B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A7D0D0A6469762E66632D6167656E64614C69737420';
wwv_flow_api.g_varchar2_table(477) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236562656265623B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D';
wwv_flow_api.g_varchar2_table(478) := '646179486561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236439643964393B0D0A2020636F6C6F723A20233236323632363B0D0A2020626F726465722D636F6C6F723A20236661666166613B0D0A7D0D0A2E6663202E66632D61';
wwv_flow_api.g_varchar2_table(479) := '67656E64614C6973742D646179207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E6663202E66632D6167656E64614C6973742D64617465207B0D0A2020636F6C6F723A20233464346434643B0D0A7D0D0A2E6663202E66632D6167656E';
wwv_flow_api.g_varchar2_table(480) := '64614C697374202E66632D6576656E742D73746172742D74696D652C0D0A2E6663202E66632D6167656E64614C697374202E66632D6576656E742D616C6C2D646179207B0D0A2020636F6C6F723A20233464346434643B0D0A7D0D0A626F6479202E6663';
wwv_flow_api.g_varchar2_table(481) := '2074642E66632D746F6461792C0D0A626F6479202E6663202E75692D7769646765742D636F6E74656E74207B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(482) := '75692D7769646765742D636F6E74656E742E66632D746F6461792E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E6663202E66632D6167656E64614C697374';
wwv_flow_api.g_varchar2_table(483) := '2D6974656D207B0D0A2020626F726465722D636F6C6F723A20236661666166613B0D0A7D0D0A2E6663202E75692D627574746F6E3A6163746976652C0D0A2E6663202E75692D627574746F6E3A666F6375732C0D0A2E66632D766965773A616374697665';
wwv_flow_api.g_varchar2_table(484) := '2C0D0A2E66632D766965773A666F637573207B0D0A20206F75746C696E653A2031707820736F6C696420233233373063323B0D0A7D0D0A2E66632D766965772D636F6E7461696E6572203E202E66632D766965773A6163746976652C0D0A2E66632D7669';
wwv_flow_api.g_varchar2_table(485) := '65772D636F6E7461696E6572203E202E66632D766965773A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A2E742D43617264207B0D0A2020626F782D736861646F773A20302032707820347078202D32707820726762612830';
wwv_flow_api.g_varchar2_table(486) := '2C20302C20302C20302E303735293B0D0A7D0D0A2E742D436172642D77726170207B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(487) := '6C6F723A207267626128302C20302C20302C20302E303735293B0D0A7D0D0A2E742D436172642D777261703A666F637573207B0D0A2020626F726465722D636F6C6F723A20233233373063323B0D0A7D0D0A2E742D436172642D69636F6E207B0D0A2020';
wwv_flow_api.g_varchar2_table(488) := '636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436172642D64657363207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D436172642D696E666F2C0D0A2E742D436172642D7375627469746C65207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(489) := '3A20233636363636363B0D0A7D0D0A2E742D436172642D7469746C65207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D436172642D636F6C6F7246696C6C2C0D0A2E742D436172642D69636F6E207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(490) := '6E642D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D43617264732D2D6665617475726564202E742D436172642D626F6479207B0D0A2020626F726465722D746F702D636F6C6F723A20726762';
wwv_flow_api.g_varchar2_table(491) := '6128302C20302C20302C20302E303735293B0D0A7D0D0A2E742D43617264732D2D6261736963202E742D436172642D7469746C6557726170207B0D0A2020626F782D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E30';
wwv_flow_api.g_varchar2_table(492) := '352920696E7365743B0D0A7D0D0A2E742D43617264732D2D636F6D70616374202E742D436172642D7469746C6557726170207B0D0A2020626F782D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E30352920696E7365';
wwv_flow_api.g_varchar2_table(493) := '743B0D0A7D0D0A2E742D43617264732D2D6665617475726564202E742D436172642D626F6479207B0D0A2020626F726465722D746F702D636F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A7D0D0A2E742D43617264732D2D626C';
wwv_flow_api.g_varchar2_table(494) := '6F636B202E742D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A2020746578742D736861646F773A20302031707820317078207267626128302C20302C20302C20302E31293B';
wwv_flow_api.g_varchar2_table(495) := '0D0A7D0D0A2E742D43617264732D2D616E696D526169736543617264202E742D436172643A686F766572207B0D0A2020626F782D736861646F773A2030203130707820347078202D347078207267626128302C20302C20302C20302E3035293B0D0A7D0D';
wwv_flow_api.g_varchar2_table(496) := '0A2E742D43617264732D2D73616D706C6541707073466F6F746572207B0D0A20206D617267696E2D746F703A20333270783B0D0A7D0D0A2E742D43617264732D2D73616D706C6541707073466F6F746572202E742D43617264207B0D0A2020626F782D73';
wwv_flow_api.g_varchar2_table(497) := '6861646F773A206E6F6E653B0D0A7D0D0A2E742D43617264732D2D73616D706C6541707073466F6F746572202E742D43617264732D6974656D207B0D0A2020646973706C61793A20626C6F636B3B0D0A2020666C65782D67726F773A20313B0D0A202077';
wwv_flow_api.g_varchar2_table(498) := '696474683A203235253B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20343830707829207B0D0A20202E742D43617264732D2D73616D706C6541707073466F6F746572202E742D43617264732D6974';
wwv_flow_api.g_varchar2_table(499) := '656D207B0D0A2020202077696474683A203530253B0D0A20207D0D0A7D0D0A2E742D43617264732D2D73616D706C6541707073466F6F746572202E742D436172642D777261702C0D0A2E742D43617264732D2D73616D706C6541707073466F6F74657220';
wwv_flow_api.g_varchar2_table(500) := '2E742D436172642D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D43617264732D2D73616D706C6541';
wwv_flow_api.g_varchar2_table(501) := '707073466F6F746572202E742D436172642D69636F6E207B0D0A20207472616E736974696F6E3A20302E327320656173653B0D0A7D0D0A2E742D43617264732D2D73616D706C6541707073466F6F746572202E742D49636F6E207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(502) := '726F756E642D636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6D6F6E74';
wwv_flow_api.g_varchar2_table(503) := '685469746C65207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D436C617373696343616C656E6461722D646179436F6C756D6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A202076657274';
wwv_flow_api.g_varchar2_table(504) := '6963616C2D616C69676E3A20746F703B0D0A2020626F726465722D636F6C6F723A20236632663266323B0D0A2020636F6C6F723A20233464346434643B0D0A7D0D0A2E742D436C617373696343616C656E6461722D646179207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(505) := '2D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D696E616374697665202E742D436C617373696343616C656E6461722D64617465207B0D0A20206F7061636974793A20302E353B0D0A';
wwv_flow_api.g_varchar2_table(506) := '7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D7765656B656E642C0D0A2E742D436C617373696343616C656E6461722D6461792E69732D696E616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236663';
wwv_flow_api.g_varchar2_table(507) := '666366633B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6461792E69732D746F646179202E742D436C617373696343616C656E6461722D64617465207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A20';
wwv_flow_api.g_varchar2_table(508) := '20636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D64617465207B0D0A2020636F6C6F723A20233636363636363B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E74207B0D0A2020';
wwv_flow_api.g_varchar2_table(509) := '6261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6576656E74207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D436C617373696343616C656E6461722D';
wwv_flow_api.g_varchar2_table(510) := '6576656E742061207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C6173736963';
wwv_flow_api.g_varchar2_table(511) := '43616C656E6461722D74696D65436F6C2C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D74696D65436F6C207B0D0A20206261636B67726F756E642D636F6C6F723A202366616661';
wwv_flow_api.g_varchar2_table(512) := '66613B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E74732C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373';
wwv_flow_api.g_varchar2_table(513) := '696343616C656E6461722D6461794576656E7473207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461794576656E74';
wwv_flow_api.g_varchar2_table(514) := '7320612C0D0A2E742D436C617373696343616C656E6461722D2D6461696C79202E742D436C617373696343616C656E6461722D6461794576656E74732061207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020636F';
wwv_flow_api.g_varchar2_table(515) := '6C6F723A20236666666666663B0D0A7D0D0A2E742D436C617373696343616C656E6461722D2D7765656B6C79202E742D436C617373696343616C656E6461722D6461792E69732D746F6461792C0D0A2E742D436C617373696343616C656E6461722D2D64';
wwv_flow_api.g_varchar2_table(516) := '61696C79202E742D436C617373696343616C656E6461722D6461792E69732D746F646179207B0D0A20206261636B67726F756E642D636F6C6F723A20236665663666363B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C697374207B0D0A';
wwv_flow_api.g_varchar2_table(517) := '2020626F726465722D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973745469746C652C0D0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(518) := '2D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973745469746C65207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020636F6C6F723A20233464346434643B';
wwv_flow_api.g_varchar2_table(519) := '0D0A7D0D0A2E742D436C617373696343616C656E6461722D6C6973744576656E74207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E74207B0D0A';
wwv_flow_api.g_varchar2_table(520) := '20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A2020636F6C6F723A20233030303B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D636F6D6D656E743A61';
wwv_flow_api.g_varchar2_table(521) := '66746572207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C2030293B0D0A2020626F726465722D72696768742D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D436F6D6D656E74';
wwv_flow_api.g_varchar2_table(522) := '732D2D63686174202E742D436F6D6D656E74732D6974656D2E69732D616374697665202E742D436F6D6D656E74732D636F6D6D656E74207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20';
wwv_flow_api.g_varchar2_table(523) := '20636F6C6F723A20233030303B0D0A7D0D0A2E742D436F6D6D656E74732D2D63686174202E742D436F6D6D656E74732D6974656D2E69732D616374697665202E742D436F6D6D656E74732D636F6D6D656E743A6166746572207B0D0A2020626F72646572';
wwv_flow_api.g_varchar2_table(524) := '2D72696768742D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D436F6D6D656E74732D2D6261736963202E742D436F6D6D656E74732D6974656D2E69732D616374697665207B0D0A20206261636B67726F756E642D';
wwv_flow_api.g_varchar2_table(525) := '636F6C6F723A20236662666266623B0D0A7D0D0A2E742D436F6D6D656E74732D6974656D2E69732D73797374656D4D657373616765207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612831332C2031332C2031332C20302E3035293B';
wwv_flow_api.g_varchar2_table(526) := '0D0A7D0D0A2E742D436F6D6D656E74732D696E666F207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3635293B0D0A7D0D0A2E742D436F6D6D656E74732D636F6D6D656E74207B0D0A2020636F6C6F723A20233030303B0D0A7D0D';
wwv_flow_api.g_varchar2_table(527) := '0A2E742D436F6D706C6574656E657373207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E312920696E7365743B0D';
wwv_flow_api.g_varchar2_table(528) := '0A7D0D0A612E742D436F6D706C6574656E6573733A686F766572202E742D436F6D706C6574656E6573732D6C6162656C57726170207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D';
wwv_flow_api.g_varchar2_table(529) := '0A612E742D436F6D706C6574656E6573733A686F766572202E742D436F6D706C6574656E6573732D6C6162656C207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D436F6D706C6574656E6573732D6669';
wwv_flow_api.g_varchar2_table(530) := '6C6C207B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E31352920696E7365743B0D0A7D0D0A2E742D436F6D706C6574656E6573732D6C6162656C207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(531) := '6F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A7D0D0A2E742D436F6E66696750616E656C207B0D0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(532) := '30202D3170782030207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A2E742D436F6E66696750616E656C2D61626F7574207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663765303B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(533) := '3A20233536353635363B0D0A2020626F782D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A2E742D436F6E66696750616E656C2D6D61696E207B0D0A2020626F782D736861646F77';
wwv_flow_api.g_varchar2_table(534) := '3A202D31707820302030207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20363430707829207B0D0A20202E742D436F6E66696750616E';
wwv_flow_api.g_varchar2_table(535) := '656C2D6D61696E207B0D0A20202020626F782D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E312920696E7365743B0D0A20207D0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(536) := '65722D7261646975733A20313030253B0D0A20206261636B67726F756E642D636F6C6F723A20234130413041303B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D656E61626C6564207B0D';
wwv_flow_api.g_varchar2_table(537) := '0A20206261636B67726F756E642D636F6C6F723A20233342414132433B0D0A7D0D0A2E742D436F6E66696750616E656C2D69636F6E2E69732D64697361626C6564207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A7D';
wwv_flow_api.g_varchar2_table(538) := '0D0A2E742D436F6E66696750616E656C2D73657474696E672C0D0A2E742D436F6E66696750616E656C2D737461747573207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D436F6E66696750616E656C2D737461747573207B0D0A20';
wwv_flow_api.g_varchar2_table(539) := '20636F6C6F723A20233236323632363B0D0A7D0D0A2E742D436F6E66696750616E656C2D617474724C696E6B207B0D0A2020636F6C6F723A20233733373337333B0D0A2020626F782D736861646F773A2030202D3170782030207267626128302C20302C';
wwv_flow_api.g_varchar2_table(540) := '20302C20302E30352920696E7365743B0D0A7D0D0A2E742D436F6E66696750616E656C2D617474724C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A2020626F';
wwv_flow_api.g_varchar2_table(541) := '782D736861646F773A2030203170782030207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D436F6E66696750616E656C2D6174747256616C7565207B0D0A2020636F6C6F723A20233233373063323B0D0A7D0D0A2E742D436F6E74';
wwv_flow_api.g_varchar2_table(542) := '656E74426C6F636B2D2D736861646F774247202E742D436F6E74656E74426C6F636B2D626F6479207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(543) := '207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D436F6E74656E74426C6F636B2D2D6C696768744247202E742D436F6E74656E74426C6F636B2D626F6479207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C';
wwv_flow_api.g_varchar2_table(544) := '20302C20302E31293B0D0A7D0D0A2E742D436F6E74656E74526F772D6974656D207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A7D0D0A2E742D436F6E74656E74526F772D69';
wwv_flow_api.g_varchar2_table(545) := '636F6E577261702C0D0A2E742D436F6E74656E74526F772D6465736372697074696F6E2C0D0A2E742D436F6E74656E74526F772D6D697363207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D4469616C6F67207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(546) := '6B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4469616C6F67203A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(547) := '2E742D4469616C6F67203A3A2D7765626B69742D7363726F6C6C6261722D7468756D623A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236233623362333B0D0A7D0D0A2E742D4469616C6F673A3A2D7765626B69742D736372';
wwv_flow_api.g_varchar2_table(548) := '6F6C6C6261722D747261636B207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4469616C6F67526567696F6E2D627574746F6E73207B0D0A2020626F782D736861646F773A20696E7365742030203170';
wwv_flow_api.g_varchar2_table(549) := '782030207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D46532D636F6E74726F6C202B202E612D46532D636F6E74726F6C207B0D0A2020626F726465722D746F702D636F6C6F723A207267626128302C20302C20302C20302E3129';
wwv_flow_api.g_varchar2_table(550) := '3B0D0A7D0D0A2E612D46532D746F67676C65207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F726465722D7261646975733A2032';
wwv_flow_api.g_varchar2_table(551) := '70783B0D0A7D0D0A2E612D46532D746F67676C653A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A2E612D46532D746F67676C653A666F637573207B0D0A202062';
wwv_flow_api.g_varchar2_table(552) := '61636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020626F782D736861646F773A2030203170782031707820302072676261283231382C2032372C2032372C20302E3835293B0D0A7D0D0A2E612D46532D636C656172427574746F6E2C';
wwv_flow_api.g_varchar2_table(553) := '0D0A2E612D46532D746F67676C654F766572666C6F77207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20236461316231623B0D0A7D0D0A2E612D46532D736561726368207370616E2E';
wwv_flow_api.g_varchar2_table(554) := '617065782D6974656D2D69636F6E2C0D0A2E612D46532D66696C746572207370616E2E617065782D6974656D2D69636F6E207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3635293B0D0A7D0D0A2E612D46532D73656172636820';
wwv_flow_api.g_varchar2_table(555) := '7B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D466F6F746572207B0D0A2020626F726465722D746F702D636F6C6F723A207267626128302C20302C20302C20302E30';
wwv_flow_api.g_varchar2_table(556) := '35293B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A2E742D466F6F7465722D746F70427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(557) := '663B0D0A2020636F6C6F723A20233537353735373B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A2E742D466F6F7465722D746F70427574746F6E3A686F76';
wwv_flow_api.g_varchar2_table(558) := '6572207B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E312920696E7365742C20302032707820347078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D466F6F746572';
wwv_flow_api.g_varchar2_table(559) := '2D746F70427574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365743B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E65723A6265666F7265207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(560) := '6C6F723A20233230323032303B0D0A7D0D0A2E612D4952522D7365617263682D6669656C642C0D0A2E612D4947202E612D546F6F6C6261722D696E70757454657874207B0D0A2020636F6C6F723A20233230323032303B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(561) := '642D636F6C6F723A20236639663966393B0D0A2020626F726465722D636F6C6F723A20236466646664663B0D0A7D0D0A2E612D4947202E612D546F6F6C6261722D696E70757454657874207B0D0A2020626F782D736861646F773A203020302030203170';
wwv_flow_api.g_varchar2_table(562) := '78202364666466646620696E7365743B0D0A7D0D0A2E617065782D6974656D2D74657874617265612C0D0A2E617065782D6974656D2D746578742C0D0A2E617065782D6974656D2D73656C6563742C0D0A2E617065782D6974656D2D6D756C74692C0D0A';
wwv_flow_api.g_varchar2_table(563) := '73656C6563742E6C6973746D616E61676572207B0D0A2020636F6C6F723A20233230323032303B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F726465722D636F6C6F723A20236466646664663B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(564) := '2E617065782D6974656D2D74657874617265612E617065782D706167652D6974656D2D6572726F722C0D0A2E617065782D6974656D2D746578742E617065782D706167652D6974656D2D6572726F722C0D0A2E617065782D6974656D2D73656C6563742E';
wwv_flow_api.g_varchar2_table(565) := '617065782D706167652D6974656D2D6572726F722C0D0A2E617065782D6974656D2D6D756C74692E617065782D706167652D6974656D2D6572726F722C0D0A73656C6563742E6C6973746D616E616765722E617065782D706167652D6974656D2D657272';
wwv_flow_api.g_varchar2_table(566) := '6F72207B0D0A2020626F726465722D636F6C6F723A20236637373036363B0D0A7D0D0A2E617065782D6974656D2D74657874617265612E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E617065782D69';
wwv_flow_api.g_varchar2_table(567) := '74656D2D746578742E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A2E617065782D6974656D2D73656C6563742E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C6964';
wwv_flow_api.g_varchar2_table(568) := '2C0D0A2E617065782D6974656D2D6D756C74692E617065782D706167652D6974656D2D6572726F723A72657175697265643A76616C69642C0D0A73656C6563742E6C6973746D616E616765722E617065782D706167652D6974656D2D6572726F723A7265';
wwv_flow_api.g_varchar2_table(569) := '7175697265643A76616C6964207B0D0A2020626F726465722D636F6C6F723A20236466646664663B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E617065782D6974656D2D77726170706572';
wwv_flow_api.g_varchar2_table(570) := '2D2D74657874617265612E6A732D73686F772D6C6162656C202E742D466F726D2D6C6162656C3A6265666F72652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E617065782D6974656D2D77726170';
wwv_flow_api.g_varchar2_table(571) := '7065722D2D74657874617265612E69732D616374697665202E742D466F726D2D6C6162656C3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E746169';
wwv_flow_api.g_varchar2_table(572) := '6E65722D2D666C6F6174696E674C6162656C2E617065782D6974656D2D777261707065722D2D74657874617265613A666F6375732D77697468696E202E742D466F726D2D6C6162656C3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(573) := '6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C2E617065782D6974656D2D777261707065722D2D74657874617265613A686F76657220';
wwv_flow_api.g_varchar2_table(574) := '2E742D466F726D2D6C6162656C3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E617065782D6974656D2D746578742C0D0A2E617065782D6974656D2D73656C6563742C0D0A2E61706578';
wwv_flow_api.g_varchar2_table(575) := '2D6974656D2D7465787461726561207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E617065782D6974656D2D6D756C7469202E617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F76207B0D0A';
wwv_flow_api.g_varchar2_table(576) := '20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C';
wwv_flow_api.g_varchar2_table(577) := '6162656C202E742D466F726D2D696E707574436F6E7461696E6572202E617065782D6974656D2D646973706C61792D6F6E6C79207B0D0A2020636F6C6F723A20233230323032303B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666';
wwv_flow_api.g_varchar2_table(578) := '663B0D0A2020626F726465722D636F6C6F723A20236466646664663B0D0A2020626F726465722D7374796C653A206461736865643B0D0A7D0D0A2E617065782D6974656D2D66696C652D64726F707A6F6E652D6C6162656C207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(579) := '6F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20726762612833322C2033322C2033322C20302E37293B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E617065';
wwv_flow_api.g_varchar2_table(580) := '782D6974656D2D66696C652D64726F707A6F6E652D6C6162656C207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E617065782D6974656D2D66696C652D64726F707A6F6E652D69636F6E207B0D0A202062';
wwv_flow_api.g_varchar2_table(581) := '61636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E617065782D6974656D2D66696C652D64726F707A6F6E652D69636F6E207B0D';
wwv_flow_api.g_varchar2_table(582) := '0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E617065782D6974656D2D66696C653A686F766572202B202E617065782D6974656D2D66696C652D64726F707A6F6E65202E617065782D6974656D2D66696C652D';
wwv_flow_api.g_varchar2_table(583) := '64726F707A6F6E652D6C6162656C207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E617065782D6974656D2D66696C653A686F766572202B202E617065782D6974656D2D66696C652D64726F707A6F6E65202E617065782D6974656D2D';
wwv_flow_api.g_varchar2_table(584) := '66696C652D64726F707A6F6E652D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E617065782D6974656D2D66696C653A666F637573202B202E61';
wwv_flow_api.g_varchar2_table(585) := '7065782D6974656D2D66696C652D64726F707A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D6C6162656C207B0D0A2020626F726465722D636F6C6F723A20233233373063323B0D0A2020636F6C6F723A20233230323032303B';
wwv_flow_api.g_varchar2_table(586) := '0D0A7D0D0A2E617065782D6974656D2D66696C653A666F637573202B202E617065782D6974656D2D66696C652D64726F707A6F6E65202E617065782D6974656D2D66696C652D64726F707A6F6E652D69636F6E207B0D0A2020626F726465722D636F6C6F';
wwv_flow_api.g_varchar2_table(587) := '723A20233233373063323B0D0A20206261636B67726F756E642D636F6C6F723A20233233373063323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E617065782D6974656D2D74657874617265613A666F6375732C0D0A2E617065782D69';
wwv_flow_api.g_varchar2_table(588) := '74656D2D746578743A666F6375732C0D0A2E617065782D6974656D2D73656C6563743A666F6375732C0D0A2E617065782D6974656D2D6D756C74693A666F6375732C0D0A73656C6563742E6C6973746D616E616765723A666F637573207B0D0A20206261';
wwv_flow_api.g_varchar2_table(589) := '636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0D0A2020626F726465722D636F6C6F723A20233233373063322021696D706F7274616E743B0D0A7D0D0A2E617065782D6974656D2D746578742E612D506F707570';
wwv_flow_api.g_varchar2_table(590) := '4C4F562D7365617263683A666F637573202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D746578742E612D506F7075704C4F562D7365617263682E69732D666F6375736564202B202E612D427574746F6E2D2D70';
wwv_flow_api.g_varchar2_table(591) := '6F7075704C4F562C0D0A2E617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F763A666F637573202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D746578742E617065782D697465';
wwv_flow_api.g_varchar2_table(592) := '6D2D706F7075702D6C6F762E69732D666F6375736564202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D6D756C74693A666F637573202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D';
wwv_flow_api.g_varchar2_table(593) := '6974656D2D6D756C74692E69732D666F6375736564202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D746578742E612D506F7075704C4F562D7365617263683A666F637573202B202E617065782D6974656D2D69';
wwv_flow_api.g_varchar2_table(594) := '636F6E202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D746578742E612D506F7075704C4F562D7365617263682E69732D666F6375736564202B202E617065782D6974656D2D69636F6E202B202E612D42757474';
wwv_flow_api.g_varchar2_table(595) := '6F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F763A666F637573202B202E617065782D6974656D2D69636F6E202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E';
wwv_flow_api.g_varchar2_table(596) := '617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F762E69732D666F6375736564202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D6D756C74693A666F637573202B202E61706578';
wwv_flow_api.g_varchar2_table(597) := '2D6974656D2D69636F6E202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D6D756C74692E69732D666F6375736564202B202E617065782D6974656D2D69636F6E202B202E612D427574746F6E2D2D706F7075704C';
wwv_flow_api.g_varchar2_table(598) := '4F56207B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365743B0D0A7D0D0A2E617065782D6974656D2D74657874617265613A686F7665722C0D0A2E617065782D6974656D2D746578743A686F7665722C0D';
wwv_flow_api.g_varchar2_table(599) := '0A2E617065782D6974656D2D73656C6563743A686F7665722C0D0A2E617065782D6974656D2D6D756C74693A686F7665722C0D0A73656C6563742E6C6973746D616E616765723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(600) := '236666666666663B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D7765626B69742D696E7075742D706C616365686F6C646572207B0D0A2020636F6C6F723A20726762612833322C2033322C2033322C20302E';
wwv_flow_api.g_varchar2_table(601) := '3632293B0D0A20206F7061636974793A20313B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A3A2D6D6F7A2D706C616365686F6C646572207B0D0A2020636F6C6F723A20726762612833322C2033322C2033322C20';
wwv_flow_api.g_varchar2_table(602) := '302E3632293B0D0A20206F7061636974793A20313B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075743A2D6D732D696E7075742D706C616365686F6C646572207B0D0A2020636F6C6F723A20726762612833322C203332';
wwv_flow_api.g_varchar2_table(603) := '2C2033322C20302E3632293B0D0A20206F7061636974793A20313B0D0A7D0D0A2E742D466F726D20696E7075742E66696C65207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D466F726D2D696E707574436F6E7461696E65722073';
wwv_flow_api.g_varchar2_table(604) := '70616E2E646973706C61795F6F6E6C79207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D73656C6563';
wwv_flow_api.g_varchar2_table(605) := '742C0D0A2E742D466F726D2D696E707574436F6E7461696E65722073656C6563742E7965735F6E6F207B0D0A2020636F6C6F723A20233230323032303B0D0A2020626F726465722D636F6C6F723A20236466646664663B0D0A7D0D0A2E742D466F726D2D';
wwv_flow_api.g_varchar2_table(606) := '6669656C642D2D726561644F6E6C79207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D466F726D2D726164696F4C6162656C2C0D0A2E742D466F726D2D696E707574436F6E7461696E657220';
wwv_flow_api.g_varchar2_table(607) := '2E726164696F5F67726F7570206C6162656C2C0D0A2E742D466F726D2D636865636B626F784C6162656C2C0D0A2E742D466F726D2D696E707574436F6E7461696E6572202E636865636B626F785F67726F7570206C6162656C2C0D0A2E742D466F726D2D';
wwv_flow_api.g_varchar2_table(608) := '6C6162656C207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E742D466F726D2D6C6162656C207B0D0A2020636F6C6F723A202335393539';
wwv_flow_api.g_varchar2_table(609) := '35393B0D0A7D0D0A2E742D466F726D2D6572726F72207B0D0A2020636F6C6F723A20236634343333363B0D0A7D0D0A2E742D466F726D2D706F737454657874207B0D0A2020636F6C6F723A20236136613661363B0D0A7D0D0A2E742D466F726D2D2D7365';
wwv_flow_api.g_varchar2_table(610) := '6172636820696E7075742E742D466F726D2D7365617263684669656C64207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E612D427574746F6E2E612D427574';
wwv_flow_api.g_varchar2_table(611) := '746F6E2D2D63616C656E6461722C0D0A2E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F56207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E612D427574746F6E2E61';
wwv_flow_api.g_varchar2_table(612) := '2D427574746F6E2D2D63616C656E6461722C0D0A2E752D52544C202E612D427574746F6E2E612D427574746F6E2D2D706F7075704C4F56207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D466F726D';
wwv_flow_api.g_varchar2_table(613) := '2D696E707574436F6E7461696E657220696E7075742E686173446174657069636B65722C0D0A2E742D466F726D2D696E707574436F6E7461696E657220696E7075742E706F7075705F6C6F76207B0D0A2020626F726465722D7261646975733A20327078';
wwv_flow_api.g_varchar2_table(614) := '20302030203270783B0D0A7D0D0A2E752D52544C202E742D466F726D2D696E707574436F6E7461696E657220696E7075742E686173446174657069636B65722C0D0A2E752D52544C202E742D466F726D2D696E707574436F6E7461696E657220696E7075';
wwv_flow_api.g_varchar2_table(615) := '742E706F7075705F6C6F76207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E617065782D6974656D2D67726F75702D2D726320696E707574207B0D0A20200D0A7D0D0A2E617065782D6974656D2D67726F';
wwv_flow_api.g_varchar2_table(616) := '75702D2D726320696E707574202B206C6162656C3A6265666F7265207B0D0A2020626F782D736861646F773A20696E736574207267626128302C20302C20302C20302E313529203020302030203170783B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(617) := '723A20236639663966393B0D0A7D0D0A2E617065782D6974656D2D67726F75702D2D726320696E707574202B206C6162656C3A6166746572207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E617065782D6974656D2D67726F75702D2D';
wwv_flow_api.g_varchar2_table(618) := '726320696E7075743A686F766572202B206C6162656C3A6265666F7265207B0D0A2020626F782D736861646F773A20696E736574207267626128302C20302C20302C20302E323529203020302030203170783B0D0A7D0D0A2E617065782D6974656D2D67';
wwv_flow_api.g_varchar2_table(619) := '726F75702D2D726320696E7075743A666F637573202B206C6162656C3A6265666F7265207B0D0A2020626F782D736861646F773A20696E7365742023323337306332203020302030203170782C20696E7365742023666666666666203020302030203270';
wwv_flow_api.g_varchar2_table(620) := '783B0D0A7D0D0A2E636865636B626F785F67726F757020696E7075742C0D0A2E726164696F5F67726F757020696E707574207B0D0A20200D0A7D0D0A2E636865636B626F785F67726F757020696E7075743A666F6375733A636865636B6564202B206C61';
wwv_flow_api.g_varchar2_table(621) := '62656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A6265666F7265207B0D0A2020626F782D736861646F773A20696E7365742023323337306332203020302030203170';
wwv_flow_api.g_varchar2_table(622) := '782C20696E7365742023666666666666203020302030203270783B0D0A7D0D0A2E636865636B626F785F67726F757020696E7075743A636865636B6564202B206C6162656C3A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A6368';
wwv_flow_api.g_varchar2_table(623) := '65636B6564202B206C6162656C3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20233233373063323B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E636865636B626F785F67726F757020696E7075743A';
wwv_flow_api.g_varchar2_table(624) := '636865636B6564202B206C6162656C3A686F7665723A6265666F72652C0D0A2E726164696F5F67726F757020696E7075743A636865636B6564202B206C6162656C3A686F7665723A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(625) := '3A20233166363461633B0D0A7D0D0A2E726164696F5F67726F757020696E707574202B206C6162656C3A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E';
wwv_flow_api.g_varchar2_table(626) := '7461696E65722D2D726164696F427574746F6E47726F7570202E636865636B626F785F67726F757020696E707574207B0D0A20200D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E63';
wwv_flow_api.g_varchar2_table(627) := '6865636B626F785F67726F757020696E707574202B206C6162656C3A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A7D0D';
wwv_flow_api.g_varchar2_table(628) := '0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E636865636B626F785F67726F757020696E7075743A666F637573202B206C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(629) := '6F723A20233233373063323B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E636865636B626F785F67726F757020696E7075743A666F6375733A636865636B6564202B206C616265';
wwv_flow_api.g_varchar2_table(630) := '6C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20236639663966393B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220';
wwv_flow_api.g_varchar2_table(631) := '696E7365743B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E636865636B626F785F67726F757020696E7075743A666F6375733A636865636B6564202B206C6162656C3A61667465';
wwv_flow_api.g_varchar2_table(632) := '72207B0D0A2020636F6C6F723A20233233373063323B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E636865636B626F785F67726F757020696E7075743A636865636B6564202B20';
wwv_flow_api.g_varchar2_table(633) := '6C6162656C3A6265666F7265207B0D0A2020626F726465722D636F6C6F723A20236639663966393B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D72';
wwv_flow_api.g_varchar2_table(634) := '6164696F427574746F6E47726F7570202E636865636B626F785F67726F757020696E7075743A636865636B6564202B206C6162656C3A6166746572207B0D0A2020636F6C6F723A20233233373063323B0D0A7D0D0A2E742D466F726D2D6669656C64436F';
wwv_flow_api.g_varchar2_table(635) := '6E7461696E65722D2D70726554657874426C6F636B202E742D466F726D2D6974656D546578742D2D7072652C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F726D2D6974656D54657874';
wwv_flow_api.g_varchar2_table(636) := '2D2D706F7374207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F782D736861646F773A20302030203020302E3172656D202364666466646620696E7365743B0D0A2020626F726465722D7261646975733A20';
wwv_flow_api.g_varchar2_table(637) := '3270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E742D466F726D2D6974656D546578742D2D707265207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B';
wwv_flow_api.g_varchar2_table(638) := '0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D70726554657874426C6F636B202E742D466F726D2D6974656D546578742D2D707265207B0D0A2020626F726465722D7261646975733A20302032707820327078';
wwv_flow_api.g_varchar2_table(639) := '20303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F726D2D6974656D546578742D2D706F7374207B0D0A2020626F726465722D7261646975733A203020327078203270782030';
wwv_flow_api.g_varchar2_table(640) := '3B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D706F737454657874426C6F636B202E742D466F726D2D6974656D546578742D2D706F7374207B0D0A2020626F726465722D7261646975733A20327078203020';
wwv_flow_api.g_varchar2_table(641) := '30203270783B0D0A7D0D0A2E617065782D6974656D2D6861732D69636F6E3A666F637573202B202E617065782D6974656D2D69636F6E2C0D0A2E617065782D6974656D2D6D756C74692E69732D666F6375736564202B202E617065782D6974656D2D6963';
wwv_flow_api.g_varchar2_table(642) := '6F6E207B0D0A2020636F6C6F723A20233233373063323B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E617065782D6974656D2D69636F6E207B0D0A2020636F6C6F723A20233430343034';
wwv_flow_api.g_varchar2_table(643) := '303B0D0A2020626F782D736861646F773A202D302E3172656D20302030202364666466646620696E7365743B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64';
wwv_flow_api.g_varchar2_table(644) := '436F6E7461696E65722D2D666C6F6174696E674C6162656C202E617065782D6974656D2D69636F6E207B0D0A2020626F782D736861646F773A20302E3172656D20302030202364666466646620696E7365743B0D0A2020626F726465722D726164697573';
wwv_flow_api.g_varchar2_table(645) := '3A2030203270782032707820303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E617065782D6974656D2D6861732D69636F6E3A666F637573202B202E617065782D6974656D2D69636F6E';
wwv_flow_api.g_varchar2_table(646) := '2C0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D666C6F6174696E674C6162656C202E617065782D6974656D2D6D756C74692E69732D666F6375736564202B202E617065782D6974656D2D69636F6E207B0D0A2020626F782D73686164';
wwv_flow_api.g_varchar2_table(647) := '6F773A206E6F6E653B0D0A20206261636B67726F756E642D636F6C6F723A20233233373063323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D466F726D2D68656C70427574746F6E3A666F637573202E612D49636F6E207B0D0A20';
wwv_flow_api.g_varchar2_table(648) := '20636F6C6F723A20233233373063323B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E742D466F726D2D6974656D57726170706572203E202E617065782D6974656D2D67726F7570';
wwv_flow_api.g_varchar2_table(649) := '203E202E617065782D6974656D2D6F7074696F6E3A66697273742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E6572';
wwv_flow_api.g_varchar2_table(650) := '2D2D726164696F427574746F6E47726F7570202E742D466F726D2D6974656D57726170706572203E202E617065782D6974656D2D67726F7570203E202E617065782D6974656D2D6F7074696F6E3A6C6173742D6F662D74797065206C6162656C207B0D0A';
wwv_flow_api.g_varchar2_table(651) := '2020626F726465722D7261646975733A2030203020327078203270783B0D0A7D0D0A2E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726964202E617065782D697465';
wwv_flow_api.g_varchar2_table(652) := '6D2D677269642D726F773A6F6E6C792D6368696C64202E617065782D6974656D2D6F7074696F6E3A66697273742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(653) := '466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726964202E617065782D6974656D2D677269642D726F773A6F6E6C792D6368696C64202E617065782D6974656D2D6F707469';
wwv_flow_api.g_varchar2_table(654) := '6F6E3A6C6173742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F';
wwv_flow_api.g_varchar2_table(655) := '6E47726F7570202E617065782D6974656D2D67726964202E617065782D6974656D2D677269642D726F773A6F6E6C792D6368696C64202E617065782D6974656D2D6F7074696F6E3A66697273742D6F662D74797065206C6162656C207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(656) := '6465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E752D52544C202E742D466F726D2D6669656C64436F6E7461696E65722D2D726164696F427574746F6E47726F7570202E617065782D6974656D2D67726964202E617065782D69';
wwv_flow_api.g_varchar2_table(657) := '74656D2D677269642D726F773A6F6E6C792D6368696C64202E617065782D6974656D2D6F7074696F6E3A6C6173742D6F662D74797065206C6162656C207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E61';
wwv_flow_api.g_varchar2_table(658) := '2D5377697463682D746F67676C65207B0D0A2020626F782D736861646F773A20696E736574207267626128302C20302C20302C20302E303529203020302030203170783B0D0A20206261636B67726F756E642D636F6C6F723A20233863386338633B0D0A';
wwv_flow_api.g_varchar2_table(659) := '7D0D0A2E612D5377697463682D746F67676C653A6265666F7265207B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A7D0D0A2E612D5377697463683A686F766572202E612D5377697463682D746F67676C65207B0D0A20206261';
wwv_flow_api.g_varchar2_table(660) := '636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A7D0D0A2E612D5377697463683A616374697665202E612D5377697463682D746F67676C653A6265666F7265207B0D0A20207472616E73666F726D3A207363';
wwv_flow_api.g_varchar2_table(661) := '616C6528302E3735293B0D0A7D0D0A2E612D53776974636820696E7075745B747970653D636865636B626F785D3A666F637573202B202E612D5377697463682D746F67676C65207B0D0A2020626F782D736861646F773A20696E73657420233233373063';
wwv_flow_api.g_varchar2_table(662) := '32203020302030203170782C20696E7365742023666666203020302030203270783B0D0A7D0D0A2E612D53776974636820696E7075745B747970653D636865636B626F785D3A696E64657465726D696E617465202B202E612D5377697463682D746F6767';
wwv_flow_api.g_varchar2_table(663) := '6C653A6265666F7265207B0D0A20207472616E73666F726D2D6F726967696E3A203530253B0D0A2020626F782D736861646F773A20696E7365742023323337306332203020302030203170783B0D0A20206261636B67726F756E642D636F6C6F723A2072';
wwv_flow_api.g_varchar2_table(664) := '6762612833352C203131322C203139342C20302E303035293B0D0A7D0D0A2E612D53776974636820696E7075745B747970653D636865636B626F785D3A636865636B6564202B202E612D5377697463682D746F67676C65207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(665) := '756E642D636F6C6F723A20233233373063323B0D0A7D0D0A2E612D53776974636820696E7075745B747970653D636865636B626F785D3A636865636B6564202B202E612D5377697463682D746F67676C653A6265666F7265207B0D0A20207472616E7366';
wwv_flow_api.g_varchar2_table(666) := '6F726D2D6F726967696E3A207269676874203530253B0D0A7D0D0A2E612D5377697463683A686F76657220696E7075745B747970653D636865636B626F785D3A636865636B6564202B202E612D5377697463682D746F67676C65207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(667) := '67726F756E642D636F6C6F723A20233166363461633B0D0A7D0D0A2E742D4865616465722D6272616E64696E67207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A7D0D0A2E742D4865616465722D6C6F676F2C0D0A2E';
wwv_flow_api.g_varchar2_table(668) := '742D486561646572202E742D427574746F6E2D2D6865616465722E69732D6163746976652C0D0A2E742D486561646572202E742D427574746F6E2D2D686561646572207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4865616465';
wwv_flow_api.g_varchar2_table(669) := '722D6C6F676F3A686F7665722C0D0A2E742D486561646572202E742D427574746F6E2D2D6865616465722E69732D6163746976653A686F7665722C0D0A2E742D486561646572202E742D427574746F6E2D2D6865616465723A686F766572207B0D0A2020';
wwv_flow_api.g_varchar2_table(670) := '746578742D6465636F726174696F6E3A206E6F6E653B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6C696E6B207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D4865616465722D6C6F676F2D6C696E6B3A666F6375732C0D0A';
wwv_flow_api.g_varchar2_table(671) := '2E742D4865616465722D6C6F676F2D6C696E6B3A6163746976653A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202335323937653020696E7365743B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(672) := '4865726F526567696F6E2D69636F6E207B0D0A2020626F726465722D7261646975733A203470783B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D486572';
wwv_flow_api.g_varchar2_table(673) := '6F526567696F6E2D7469746C65207B0D0A2020636F6C6F723A20233234323432343B0D0A7D0D0A2E742D4865726F526567696F6E2D636F6C2D2D636F6E74656E74207B0D0A2020636F6C6F723A20233731373137313B0D0A7D0D0A2E742D426F64792D74';
wwv_flow_api.g_varchar2_table(674) := '69746C65202E742D4865726F526567696F6E2D7469746C652C0D0A2E742D426F64792D7469746C65202E742D4865726F526567696F6E2D636F6C2D2D636F6E74656E74207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E612D4947207B';
wwv_flow_api.g_varchar2_table(675) := '0D0A2020626F726465722D636F6C6F723A20236563656365633B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A7D0D0A2E612D52562D746F6F6C626172207B0D0A2020626F726465722D636F6C6F723A20236431643164313B0D';
wwv_flow_api.g_varchar2_table(676) := '0A7D0D0A2E612D47562D6864722C0D0A2E612D49472D686561646572207B0D0A2020626F726465722D636F6C6F723A20236563656365633B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D47562D772D66';
wwv_flow_api.g_varchar2_table(677) := '726F7A656E202E612D47562D7461626C652C0D0A2E612D47562D772D686472202E612D47562D7461626C65207B0D0A2020626F726465722D636F6C6F723A20236530653065302021696D706F7274616E743B0D0A7D0D0A2E612D47562D626479207B0D0A';
wwv_flow_api.g_varchar2_table(678) := '20206261636B67726F756E642D636F6C6F723A20236666663B0D0A7D0D0A2E612D47562D6865616465722C0D0A2E612D47562D68656164657247726F75702C0D0A2E612D546F6F6C6261722D67726F7570207B0D0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(679) := '20236563656365633B0D0A7D0D0A2E612D47562D7461626C65202E612D47562D63656C6C207B0D0A2020626F726465722D636F6C6F723A20236563656365633B0D0A7D0D0A2E612D47562D7461626C652074722E69732D73656C6563746564202E612D47';
wwv_flow_api.g_varchar2_table(680) := '562D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236539663166393B0D0A7D0D0A2E612D4952522D706167696E6174696F6E577261702D2D626F74746F6D207B0D0A2020626F726465722D746F702D636F6C6F723A2023656365';
wwv_flow_api.g_varchar2_table(681) := '6365633B0D0A7D0D0A2E612D49472D6772696456696577202E612D47562D666F6F746572207B0D0A2020626F726465722D636F6C6F723A20236563656365633B0D0A7D0D0A2E612D47562D666F6F746572207B0D0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(682) := '20236563656365633B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A7D0D0A2E612D47562D7061676552616E6765207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3635293B0D0A7D0D0A2E612D47562D';
wwv_flow_api.g_varchar2_table(683) := '70616765427574746F6E207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3635293B0D0A7D0D0A2E612D47562D70616765427574746F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612830';
wwv_flow_api.g_varchar2_table(684) := '2C20302C20302C20302E303735293B0D0A7D0D0A2E612D47562D7061676553656C6563746F722D6974656D2E69732D73656C6563746564202E612D47562D70616765427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261';
wwv_flow_api.g_varchar2_table(685) := '28302C20302C20302C20302E3135293B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3935293B0D0A7D0D0A2E612D47562D7461626C652074682E612D47562D636F6E74726F6C427265616B486561646572207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(686) := '67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3735';
wwv_flow_api.g_varchar2_table(687) := '293B0D0A7D0D0A2E612D47562D2D656469744D6F6465202E612D47562D726F772E69732D726561646F6E6C79202E612D47562D63656C6C2C0D0A2E612D47562D2D656469744D6F6465202E612D47562D63656C6C2E69732D726561646F6E6C79207B0D0A';
wwv_flow_api.g_varchar2_table(688) := '20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020636F6C6F723A20233730373037303B0D0A7D0D0A2E612D47562D636F6C756D6E436F6E74726F6C73202E612D427574746F6E207B0D0A2020636F6C6F723A202333383338';
wwv_flow_api.g_varchar2_table(689) := '33383B0D0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A2E612D47562D636F6C';
wwv_flow_api.g_varchar2_table(690) := '756D6E436F6E74726F6C73202E612D427574746F6E2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20';
wwv_flow_api.g_varchar2_table(691) := '302C20302E3032352920696E7365743B0D0A7D0D0A2E612D495252207B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(692) := '756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D495252202E612D4952522D706167696E6174696F6E2D6C6162656C207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E612D4952522D7265706F727453756D6D617279';
wwv_flow_api.g_varchar2_table(693) := '2D76616C7565207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E612D4952522D636F6E74726F6C73436F6E7461696E6572207B0D0A2020626F726465722D746F702D636F6C6F723A20236635663566353B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(694) := '6E642D636F6C6F723A20236661666166613B0D0A7D0D0A2E612D4952522D66756C6C56696577207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F';
wwv_flow_api.g_varchar2_table(695) := '6E2D2D636F6E74726F6C73207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E612D4952522D746F6F6C626172207B0D0A20206261636B67726F756E643A20236666666666663B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(696) := '65722D636F6C6F723A20236536653665363B0D0A7D0D0A2E612D5265706F72742D70657263656E7443686172742D66696C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A7D0D0A2E612D5265706F72742D706572';
wwv_flow_api.g_varchar2_table(697) := '63656E744368617274207B0D0A20206261636B67726F756E642D636F6C6F723A20236665663666363B0D0A7D0D0A2E612D4952522D627574746F6E2D2D636F6C536561726368207B0D0A2020626F726465722D746F702D72696768742D7261646975733A';
wwv_flow_api.g_varchar2_table(698) := '20302021696D706F7274616E743B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A20302021696D706F7274616E743B0D0A7D0D0A2E752D52544C202E612D4952522D627574746F6E2D2D636F6C536561726368207B0D0A20';
wwv_flow_api.g_varchar2_table(699) := '20626F726465722D746F702D72696768742D7261646975733A203270782021696D706F7274616E743B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270782021696D706F7274616E743B0D0A2020626F726465722D74';
wwv_flow_api.g_varchar2_table(700) := '6F702D6C6566742D7261646975733A20302021696D706F7274616E743B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20302021696D706F7274616E743B0D0A7D0D0A2E612D4952522D69636F6E566965775461626C652C0D';
wwv_flow_api.g_varchar2_table(701) := '0A2E612D4952522D6368617274566965772C0D0A2E612D4952522D7069766F74566965772C0D0A2E612D4952522D67726F75704279566965772C0D0A2E612D4952522D64657461696C56696577207B0D0A2020626F726465722D746F702D636F6C6F723A';
wwv_flow_api.g_varchar2_table(702) := '20236635663566353B0D0A7D0D0A2E612D4952522D746F6F6C6261722D2D73696E676C65526F77207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0D0A7D0D0A2E612D4952522D686561646572207B0D0A20206261';
wwv_flow_api.g_varchar2_table(703) := '636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020626F726465722D746F703A2031707820736F6C696420236536653665363B0D0A2020626F782D736861646F773A20696E7365742031707820302030203020236536653665363B0D0A';
wwv_flow_api.g_varchar2_table(704) := '2020636F6C6F723A207267626128302C20302C20302C20302E3935293B0D0A7D0D0A2E612D4952522D6865616465723A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E612D4952522D686561';
wwv_flow_api.g_varchar2_table(705) := '6465722E69732D616374697665207B0D0A2020626F782D736861646F773A20302031707820317078207267626128302C20302C20302C20302E30352920696E7365743B0D0A7D0D0A2E612D4952522D6865616465722E69732D6163746976652061207B0D';
wwv_flow_api.g_varchar2_table(706) := '0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4952522D6865616465722E69732D616374697665202E612D4952522D686561646572536F7274207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D4952522D686561';
wwv_flow_api.g_varchar2_table(707) := '6465722E69732D6163746976652C0D0A2E612D47562D6865616465722E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20233230323032303B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D6865';
wwv_flow_api.g_varchar2_table(708) := '616465722D2D67726F7570207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A7D0D0A2E742D4952522D726567696F6E207B0D0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20';
wwv_flow_api.g_varchar2_table(709) := '302C20302E3035292C20302032707820347078202D327078207267626128302C20302C20302C20302E303735293B0D0A7D0D0A2E612D4952522D7461626C65436F6E7461696E6572202E6A732D737469636B795461626C654865616465722E69732D7374';
wwv_flow_api.g_varchar2_table(710) := '75636B207B0D0A2020626F782D736861646F773A203020317078207267626128302C20302C20302C20302E31293B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A20373638707829207B0D0A20202E61';
wwv_flow_api.g_varchar2_table(711) := '2D4952522D627574746F6E733A6265666F7265207B0D0A202020206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A20207D0D0A7D0D0A2E612D4952522D7461626C65207472207464207B0D0A20206261';
wwv_flow_api.g_varchar2_table(712) := '636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E612D4952522D7461626C65207B0D0A2020626F726465722D636F6C6C617073653A2073657061726174653B0D0A7D0D0A2E612D';
wwv_flow_api.g_varchar2_table(713) := '4952522D7461626C652074723A686F766572207464207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A7D0D0A2E742D4952522D726567696F6E2D2D6E6F426F7264657273202E612D495252207B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(714) := '722D7261646975733A203270783B0D0A7D0D0A2E612D4952522D7461626C65207464207B0D0A2020626F726465722D6C6566743A2031707820736F6C696420236632663266323B0D0A2020626F726465722D746F703A2031707820736F6C696420236632';
wwv_flow_api.g_varchar2_table(715) := '663266323B0D0A7D0D0A2E612D4952522D7461626C652074722074643A6C6173742D6368696C64207B0D0A2020626F726465722D72696768742D636F6C6F723A20236632663266323B0D0A7D0D0A2E612D4952522D6865616465724C696E6B3A666F6375';
wwv_flow_api.g_varchar2_table(716) := '73207B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365743B0D0A7D0D0A2E612D4952522D7365617263682D6669656C643A666F637573207B0D0A2020626F726465722D636F6C6F723A2023323337306332';
wwv_flow_api.g_varchar2_table(717) := '3B0D0A2020626F782D736861646F773A202D31707820302030202332333730633220696E7365742C2031707820302030202332333730633220696E7365743B0D0A7D0D0A2E612D4952522D73696E676C65526F772D6E616D652C0D0A2E612D4952522D73';
wwv_flow_api.g_varchar2_table(718) := '696E676C65526F772D76616C7565207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A20236630663066303B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E612D4952522D73696E676C65526F772D76616C7565207B0D0A20';
wwv_flow_api.g_varchar2_table(719) := '206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4952522D73696E676C65526F772D726F773A686F766572202E612D4952522D73696E676C65526F772D76616C7565207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(720) := '6C6F723A20236637663766373B0D0A7D0D0A2E612D4952522D73696E676C65526F772D6E616D65207B0D0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0D0A7D0D0A2E612D4952522D73696E676C65526F772D726F773A686F76';
wwv_flow_api.g_varchar2_table(721) := '6572202E612D4952522D73696E676C65526F772D6E616D65207B0D0A20206261636B67726F756E642D636F6C6F723A20236630663066303B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D627574746F6E2D2D706167696E6174696F6E3A';
wwv_flow_api.g_varchar2_table(722) := '686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233233373063323B0D0A7D0D0A2E612D4952522D7265706F727453756D6D6172792D6C6162656C2C0D0A2E612D4952522D636F6E74726F6C734C6162656C207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(723) := '6B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A20373639707829207B0D0A20202E69732D6D6178696D697A65642E742D4952522D726567696F';
wwv_flow_api.g_varchar2_table(724) := '6E202E742D6668742D7468656164202E612D4952522D686561646572207B0D0A20202020626F726465722D626F74746F6D3A2031707820736F6C696420236536653665363B0D0A20207D0D0A7D0D0A2E75692D7769646765742D636F6E74656E74202E61';
wwv_flow_api.g_varchar2_table(725) := '2D4952522D69636F6E4C6973742D6C696E6B207B0D0A2020636F6C6F723A20233236323632363B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D4952522D69636F6E4C6973742D6C696E6B3A686F766572';
wwv_flow_api.g_varchar2_table(726) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0D0A7D0D0A2E612D4952522D627574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20696E68657269743B0D0A7D0D0A2E612D4952522D736F72745769';
wwv_flow_api.g_varchar2_table(727) := '64676574207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612833322C2033322C2033322C20302E3935293B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228347078293B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(728) := '20234646463B0D0A2020626F726465722D77696474683A20303B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0D0A2020626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A20';
wwv_flow_api.g_varchar2_table(729) := '20626F782D736861646F773A2030203870782031367078207267626128302C20302C20302C20302E3235292C20302030203020317078207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E612D4952522D736F7274576964676574203A3A2D';
wwv_flow_api.g_varchar2_table(730) := '7765626B69742D7363726F6C6C626172207B0D0A202077696474683A203870783B0D0A20206865696768743A203870783B0D0A7D0D0A2E612D4952522D736F7274576964676574203A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D';
wwv_flow_api.g_varchar2_table(731) := '0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0D0A7D0D0A2E612D4952522D736F7274576964676574203A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A2020';
wwv_flow_api.g_varchar2_table(732) := '6261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3235293B0D0A7D0D0A2E612D4952522D736F72745769646765742D68656C70207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73';
wwv_flow_api.g_varchar2_table(733) := '706172656E743B0D0A7D0D0A2E612D4952522D736F72745769646765742D616374696F6E73207B0D0A202070616464696E673A203870783B0D0A2020626F726465722D7261646975733A203270783B0D0A202077696474683A206175746F3B0D0A202062';
wwv_flow_api.g_varchar2_table(734) := '6F726465722D626F74746F6D2D77696474683A20303B0D0A7D0D0A2E612D4952522D736F72745769646765742D616374696F6E732D6974656D207B0D0A2020626F726465722D72696768742D77696474683A20303B0D0A7D0D0A2E612D4952522D627574';
wwv_flow_api.g_varchar2_table(735) := '746F6E2E612D4952522D736F72745769646765742D627574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20234646463B0D0A2020626F726465722D7261646975733A203270';
wwv_flow_api.g_varchar2_table(736) := '783B0D0A7D0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A7D0D0A2E61';
wwv_flow_api.g_varchar2_table(737) := '2D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365743B0D0A7D0D0A2E612D4952522D627574746F';
wwv_flow_api.g_varchar2_table(738) := '6E2E612D4952522D736F72745769646765742D627574746F6E2E69732D6163746976652C0D0A2E612D4952522D627574746F6E2E612D4952522D736F72745769646765742D627574746F6E3A6163746976653A666F637573207B0D0A20206261636B6772';
wwv_flow_api.g_varchar2_table(739) := '6F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C207B0D0A20206865696768743A20343070783B0D0A202070616464696E673A20313270';
wwv_flow_api.g_varchar2_table(740) := '78203870783B0D0A7D0D0A2E612D4952522D736F72745769646765742D7365617263684C6162656C3A6265666F7265207B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D';
wwv_flow_api.g_varchar2_table(741) := '4952522D736F72745769646765742D7365617263684669656C645B747970653D2274657874225D207B0D0A2020617070656172616E63653A206E6F6E653B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C2032';
wwv_flow_api.g_varchar2_table(742) := '35352C20302E31293B0D0A20206865696768743A20343070783B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E612D4952522D736F72745769646765742D736561726368203E202E612D4952522D736F72745769646765742D7365617263684669';
wwv_flow_api.g_varchar2_table(743) := '656C645B747970653D2274657874225D3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365743B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F7773207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(744) := '6465722D746F702D77696474683A20303B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F77207B0D0A2020636F6C6F723A20234646463B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E612D4952522D736F72745769';
wwv_flow_api.g_varchar2_table(745) := '646765742D726F773A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3135293B0D0A7D0D0A2E612D4952522D736F72745769646765742D726F773A666F637573207B0D0A';
wwv_flow_api.g_varchar2_table(746) := '2020626F782D736861646F773A20302030203020317078202332333730633220696E7365743B0D0A7D0D0A2E612D4947202E612D4952522D736F72745769646765743A6265666F7265207B0D0A2020636F6C6F723A20726762612833322C2033322C2033';
wwv_flow_api.g_varchar2_table(747) := '322C20302E3935293B0D0A7D0D0A2E612D495252202E686F75722D6772617068207370616E2E686F75722E69732D6E756C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236530653065302021696D706F7274616E743B0D0A7D0D0A2E61';
wwv_flow_api.g_varchar2_table(748) := '2D495252202E686F75722D6772617068207370616E2E686F7572207B0D0A20206261636B67726F756E642D636F6C6F723A20236231646461622021696D706F7274616E743B0D0A7D0D0A2E6F6A2D6476742D63617465676F727931207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(749) := '6F723A20236464313830613B0D0A7D0D0A2E6F6A2D6476742D63617465676F727932207B0D0A2020636F6C6F723A20233343414638353B0D0A7D0D0A2E6F6A2D6476742D63617465676F727933207B0D0A2020636F6C6F723A20234642434534413B0D0A';
wwv_flow_api.g_varchar2_table(750) := '7D0D0A2E6F6A2D6476742D63617465676F727934207B0D0A2020636F6C6F723A20234539354235343B0D0A7D0D0A2E6F6A2D6476742D63617465676F727935207B0D0A2020636F6C6F723A20233835344539423B0D0A7D0D0A2E6F6A2D6476742D636174';
wwv_flow_api.g_varchar2_table(751) := '65676F727936207B0D0A2020636F6C6F723A20233245424642433B0D0A7D0D0A2E6F6A2D6476742D63617465676F727937207B0D0A2020636F6C6F723A20234544383133453B0D0A7D0D0A2E6F6A2D6476742D63617465676F727938207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(752) := '6C6F723A20234538354438383B0D0A7D0D0A2E6F6A2D6476742D63617465676F727939207B0D0A2020636F6C6F723A20233133423643463B0D0A7D0D0A2E6F6A2D6476742D63617465676F72793130207B0D0A2020636F6C6F723A20233831424235463B';
wwv_flow_api.g_varchar2_table(753) := '0D0A7D0D0A2E6F6A2D6476742D63617465676F72793131207B0D0A2020636F6C6F723A20234341353839443B0D0A7D0D0A2E6F6A2D6476742D63617465676F72793132207B0D0A2020636F6C6F723A20234444444535333B0D0A7D0D0A2E6F6A2D6C6567';
wwv_flow_api.g_varchar2_table(754) := '656E642C0D0A2E6F6A2D6C6567656E642D7469746C652C0D0A2E6F6A2D63686172742D7069652D63656E7465722D6C6162656C2C0D0A2E6F6A2D63686172742D78617869732D7469746C652C0D0A2E6F6A2D63686172742D79617869732D7469746C652C';
wwv_flow_api.g_varchar2_table(755) := '0D0A2E6F6A2D63686172742D7932617869732D7469746C652C0D0A2E6F6A2D63686172742D78617869732D7469636B2D6C6162656C2C0D0A2E6F6A2D63686172742D79617869732D7469636B2D6C6162656C2C0D0A2E6F6A2D63686172742D7932617869';
wwv_flow_api.g_varchar2_table(756) := '732D7469636B2D6C6162656C2C0D0A2E6F6A2D63686172742D646174612D6C6162656C2C0D0A2E6F6A2D6476742D6E6F2D646174612D6D657373616765207B0D0A2020636F6C6F723A20233234323432343B0D0A7D0D0A2E742D4C696E6B734C6973742D';
wwv_flow_api.g_varchar2_table(757) := '6974656D2C0D0A2E742D4C696E6B734C6973742D6C696E6B207B0D0A2020626F726465722D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A20236439643964393B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(758) := '2E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236632663266323B0D0A7D0D0A2E742D4C696E6B734C6973742D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(759) := '20302030203020317078202332333730633220696E7365743B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6974656D2D2D736570617261746F72207B0D0A2020626F726465722D626F74746F6D2D';
wwv_flow_api.g_varchar2_table(760) := '636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774172726F77202E742D4C696E6B734C6973742D6C696E6B3A6265666F7265207B0D0A2020636F6C6F723A2023643964396439';
wwv_flow_api.g_varchar2_table(761) := '3B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A2020636F6C6F723A20233236323632363B0D';
wwv_flow_api.g_varchar2_table(762) := '0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236562656265';
wwv_flow_api.g_varchar2_table(763) := '623B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564203E202E742D4C696E6B734C6973742D6C696E6B202E742D4C696E6B734C6973742D626164676520';
wwv_flow_api.g_varchar2_table(764) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236266626662663B0D0A7D0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B73';
wwv_flow_api.g_varchar2_table(765) := '4C6973742D6C696E6B3A686F7665723A6265666F7265207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E35293B0D0A7D0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C696E6B734C';
wwv_flow_api.g_varchar2_table(766) := '6973742D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4C696E6B734C6973742D2D627269676874486F766572202E742D4C';
wwv_flow_api.g_varchar2_table(767) := '696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E207B0D0A2020636F6C6F723A2072676261283235352C203235352C203235352C20302E3735293B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E69';
wwv_flow_api.g_varchar2_table(768) := '732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20234643464346433B0D0A20206261636B67726F756E643A206C696E6561722D6772616469656E74287267626128302C20302C20302C20302E303135292C2072676261';
wwv_flow_api.g_varchar2_table(769) := '28302C20302C20302C203029292C206C696E6561722D6772616469656E74287267626128302C20302C20302C2030292C207267626128302C20302C20302C20302E30313529293B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870';
wwv_flow_api.g_varchar2_table(770) := '616E646564202E742D4C696E6B734C6973742D6C696E6B3A686F7665723A6265666F7265207B0D0A2020636F6C6F723A20236461316231623B0D0A7D0D0A2E742D4C696E6B734C6973742D6974656D2E69732D657870616E646564202E742D4C696E6B73';
wwv_flow_api.g_varchar2_table(771) := '4C6973742D6C696E6B3A6265666F7265207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A2E742D4C696E6B734C6973742D2D73686F774261646765202E742D4C696E6B734C6973742D6261646765207B0D0A';
wwv_flow_api.g_varchar2_table(772) := '2020626F726465722D7261646975733A203470783B0D0A7D0D0A2E742D4C696E6B734C6973742D2D69636F6E4F6E6C79202E742D4C696E6B734C6973742D69636F6E207B0D0A2020626F726465722D7261646975733A20313030253B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(773) := '4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C6162656C207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6963';
wwv_flow_api.g_varchar2_table(774) := '6F6E207B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D69636F6E2C0D0A2E742D4C696E';
wwv_flow_api.g_varchar2_table(775) := '6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572202E742D4C696E6B734C6973742D6C6162656C2C0D0A2E742D4C696E6B734C6973742D2D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B';
wwv_flow_api.g_varchar2_table(776) := '3A686F766572202E742D4C696E6B734C6973742D6261646765207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D4C696E6B734C6973742D6C696E6B3A686F766572207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(777) := '67726F756E642D636F6C6F723A20236563656365633B0D0A7D0D0A2E612D4C697374566965772D6974656D207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C6964207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(778) := '612D4C697374566965772D6974656D202E75692D62746E207B0D0A2020636F6C6F723A20233234323432343B0D0A7D0D0A2E612D4C697374566965772D6974656D202E75692D62746E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(779) := '723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E612D4C697374566965772D6974656D202E6661207B0D0A2020636F6C6F723A20236439643964393B0D0A7D0D0A2E612D4C697374566965772D6974656D202E75692D6C692D636F';
wwv_flow_api.g_varchar2_table(780) := '756E74207B0D0A2020636F6C6F723A20233539353935393B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D50616765426F64792D2D6C6F67696E207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(781) := '20236530653065303B0D0A7D0D0A2E742D4C6F67696E506167652D2D6267312C0D0A2E742D4C6F67696E506167652D2D6267322C0D0A2E742D4C6F67696E506167652D2D626733207B0D0A20206261636B67726F756E642D636F6C6F723A202364613162';
wwv_flow_api.g_varchar2_table(782) := '31623B0D0A7D0D0A2E6170702D69636F6E207B0D0A20206261636B67726F756E642D7265706561743A206E6F2D7265706561743B0D0A20206261636B67726F756E642D73697A653A20636F7665723B0D0A20206261636B67726F756E642D706F73697469';
wwv_flow_api.g_varchar2_table(783) := '6F6E3A203530253B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A7D0D0A2E742D4C6F67696E2D69636F6E56616C69646174696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20233342414132433B0D0A';
wwv_flow_api.g_varchar2_table(784) := '2020636F6C6F723A20236666663B0D0A7D0D0A2E742D4C6F67696E2D726567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(785) := '30203870782032347078202D347078207267626128302C20302C20302C20302E32292C20302030203020317078207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D4C6F67696E506167652D2D73706C6974202E742D4C6F67696E2D63';
wwv_flow_api.g_varchar2_table(786) := '6F6E7461696E6572207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C203235352C203235352C20302E3635293B0D0A2020626F782D736861646F773A203020302032347078202D347078207267626128302C20302C2030';
wwv_flow_api.g_varchar2_table(787) := '2C20302E32292C20302030203020317078207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E612D4D44456469746F72202E612D546F6F6C626172207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E';
wwv_flow_api.g_varchar2_table(788) := '303735293B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A2020626F726465722D746F702D6C6566742D7261646975733A20302E3272656D3B0D0A2020626F726465722D746F702D7269';
wwv_flow_api.g_varchar2_table(789) := '6768742D7261646975733A20302E3272656D3B0D0A7D0D0A2E612D4D44456469746F72202E612D546F6F6C626172202E612D427574746F6E3A6E6F74283A686F766572293A6E6F74283A616374697665293A6E6F74283A666F637573293A6E6F74282E69';
wwv_flow_api.g_varchar2_table(790) := '732D61637469766529207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E612D4D44456469746F722D7072657669657750616E656C2C0D0A2E61';
wwv_flow_api.g_varchar2_table(791) := '2D4D44456469746F722074657874617265612E617065782D6974656D2D74657874617265612C0D0A2E612D4D44456469746F72202E436F64654D6972726F72207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E30';
wwv_flow_api.g_varchar2_table(792) := '3735293B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A2020636F6C6F723A20233230323032303B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A20302E3272656D3B0D0A2020626F726465722D62';
wwv_flow_api.g_varchar2_table(793) := '6F74746F6D2D72696768742D7261646975733A20302E3272656D3B0D0A7D0D0A2E612D4D44456469746F722D7072657669657750616E656C3A666F6375732C0D0A2E612D4D44456469746F722074657874617265612E617065782D6974656D2D74657874';
wwv_flow_api.g_varchar2_table(794) := '617265613A666F6375732C0D0A2E612D4D44456469746F72202E436F64654D6972726F723A666F6375732C0D0A2E612D4D44456469746F722D7072657669657750616E656C2E436F64654D6972726F722D666F63757365642C0D0A2E612D4D4445646974';
wwv_flow_api.g_varchar2_table(795) := '6F722074657874617265612E617065782D6974656D2D74657874617265612E436F64654D6972726F722D666F63757365642C0D0A2E612D4D44456469746F72202E436F64654D6972726F722E436F64654D6972726F722D666F6375736564207B0D0A2020';
wwv_flow_api.g_varchar2_table(796) := '626F726465722D636F6C6F723A20236461316231623B0D0A7D0D0A2E436F64654D6972726F722D637572736F72207B0D0A2020626F726465722D6C6566742D636F6C6F723A20233230323032302021696D706F7274616E743B0D0A7D0D0A2E69732D6D61';
wwv_flow_api.g_varchar2_table(797) := '726B646F776E69666965642068312C0D0A2E69732D6D61726B646F776E69666965642068322C0D0A2E69732D6D61726B646F776E69666965642068332C0D0A2E69732D6D61726B646F776E69666965642068342C0D0A2E69732D6D61726B646F776E6966';
wwv_flow_api.g_varchar2_table(798) := '6965642068352C0D0A2E69732D6D61726B646F776E6966696564206836207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E69732D6D61726B646F776E6966696564206872207B0D0A20206261636B67726F756E643A206E6F6E653B0D0A';
wwv_flow_api.g_varchar2_table(799) := '2020626F726465722D746F702D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A7D0D0A2E69732D6D61726B646F776E696669656420626C6F636B71756F7465207B0D0A2020626F726465722D6C6566742D636F6C6F723A20726762';
wwv_flow_api.g_varchar2_table(800) := '6128302C20302C20302C20302E31293B0D0A7D0D0A2E69732D6D61726B646F776E696669656420636F6465207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(801) := '773A20696E736574207267626128302C20302C20302C20302E303529203020302030203170783B0D0A7D0D0A2E69732D6D61726B646F776E696669656420707265207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20';
wwv_flow_api.g_varchar2_table(802) := '302C20302E3235293B0D0A2020626F782D736861646F773A20696E736574207267626128302C20302C20302C20302E303529203020302030203170783B0D0A7D0D0A2E69732D6D61726B646F776E69666965642070726520636F6465207B0D0A20206261';
wwv_flow_api.g_varchar2_table(803) := '636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E69732D6D61726B646F776E6966696564207461626C65207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(804) := '20236666663B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A2020626F782D736861646F773A20302032707820347078202D327078207267626128302C20302C20302C20302E303735293B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(805) := '2E69732D6D61726B646F776E6966696564207461626C65207468207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303135293B0D0A7D0D0A2E69732D6D61726B646F776E6966696564207461626C6520';
wwv_flow_api.g_varchar2_table(806) := '74682C0D0A2E69732D6D61726B646F776E6966696564207461626C65207464207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E69732D6D61726B646F776E6966696564';
wwv_flow_api.g_varchar2_table(807) := '207461626C652074723A686F766572207464207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E30313235293B0D0A7D0D0A2E69732D6D61726B646F776E6966696564207461626C652074723A686F7665';
wwv_flow_api.g_varchar2_table(808) := '72207468207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3235293B0D0A7D0D0A2E742D4D656469614C697374207B0D0A2020626F726465722D636F6C6F723A20236530653065303B0D0A2020626163';
wwv_flow_api.g_varchar2_table(809) := '6B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4D656469614C6973742D6974656D207B0D0A2020626F726465722D636F6C6F723A20236530653065303B0D0A7D0D0A2E742D4D656469614C6973742D6974656D2E69732D61';
wwv_flow_api.g_varchar2_table(810) := '6374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D4D656469614C6973742D2D686F72697A6F6E74616C202E742D4D656469614C6973742D6974656D207B0D0A';
wwv_flow_api.g_varchar2_table(811) := '2020626F726465722D72696768743A2031707820736F6C696420236530653065303B0D0A7D0D0A612E742D4D656469614C6973742D6974656D57726170207B0D0A2020636F6C6F723A20233233373063323B0D0A7D0D0A612E742D4D656469614C697374';
wwv_flow_api.g_varchar2_table(812) := '2D6974656D577261703A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020636F6C6F723A20233233373063323B0D0A7D0D0A612E742D4D656469614C6973742D6974656D577261703A666F63757320';
wwv_flow_api.g_varchar2_table(813) := '7B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365743B0D0A7D0D0A2E742D4D656469614C6973742D6974656D57726170207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D4D656469';
wwv_flow_api.g_varchar2_table(814) := '614C6973742D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D4D656469614C6973742D62616467652C0D0A2E742D4D656469614C6973742D64657363207B';
wwv_flow_api.g_varchar2_table(815) := '0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D4D656469614C6973742D69636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(816) := '4D656469614C6973742D2D636F6C73207B0D0A2020626F782D736861646F773A202D317078202D31707820302030202365306530653020696E7365743B0D0A7D0D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974';
wwv_flow_api.g_varchar2_table(817) := '656D3A6265666F72652C0D0A2E742D4D656469614C6973742D2D636F6C73202E742D4D656469614C6973742D6974656D3A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E612D4D656E752D63';
wwv_flow_api.g_varchar2_table(818) := '6F6E74656E74207B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20234646464646463B0D0A2020626F726465722D77696474683A20303B0D0A2020626F782D736861646F773A20302038';
wwv_flow_api.g_varchar2_table(819) := '70782031367078207267626128302C20302C20302C20302E3235292C20302030203020317078207267626128302C20302C20302C20302E31293B0D0A202070616464696E673A2038707820303B0D0A7D0D0A2E612D4D656E752D636F6E74656E74202E61';
wwv_flow_api.g_varchar2_table(820) := '2D4D656E752D7363726F6C6C42746E2D2D646F776E2C0D0A2E612D4D656E752D636F6E74656E74202E612D4D656E752D7363726F6C6C42746E2D2D7570207B0D0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(821) := '6F723A20233236323632363B0D0A7D0D0A2E612D4D656E75207B0D0A20206D696E2D77696474683A2031363070783B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D207B0D0A20206C696E652D6865696768743A20333670783B0D0A2020';
wwv_flow_api.g_varchar2_table(822) := '636F6C6F723A20233236323632363B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C2C0D0A2E612D4D656E75202E612D4D656E752D6974656D203E202E612D4D';
wwv_flow_api.g_varchar2_table(823) := '656E752D696E6E6572202E612D4D656E752D7375624D656E75436F6C207B0D0A20206F7061636974793A20302E38353B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D666F63757365642C0D0A2E612D4D656E75202E612D4D65';
wwv_flow_api.g_varchar2_table(824) := '6E752D6974656D2E69732D657870616E646564207B0D0A2020636F6C6F723A20236666666666663B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D2E69732D64';
wwv_flow_api.g_varchar2_table(825) := '697361626C65642E69732D666F6375736564207B0D0A2020636F6C6F723A20726762612833382C2033382C2033382C20302E35293B0D0A20206261636B67726F756E642D636F6C6F723A20234646464646463B0D0A7D0D0A2E612D4D656E75202E612D4D';
wwv_flow_api.g_varchar2_table(826) := '656E752D6974656D2E69732D64697361626C65642E69732D666F6375736564203E202E612D4D656E752D696E6E6572202E612D4D656E752D616363656C207B0D0A20206F7061636974793A20302E353B0D0A7D0D0A2E612D4D656E75202E612D4D656E75';
wwv_flow_api.g_varchar2_table(827) := '2D6974656D202E612D4D656E752D7375624D656E75436F6C207B0D0A20206865696768743A20333670783B0D0A202070616464696E673A203130707820347078203130707820303B0D0A7D0D0A2E612D4D656E75202E612D4D656E752D6974656D202E61';
wwv_flow_api.g_varchar2_table(828) := '2D4D656E752D737461747573436F6C207B0D0A202070616464696E673A2031307078203870783B0D0A7D0D0A2E612D4D656E752D68536570617261746F72207B0D0A2020626F726465722D636F6C6F723A20726762612833382C2033382C2033382C2030';
wwv_flow_api.g_varchar2_table(829) := '2E31293B0D0A20206D617267696E2D746F703A203470783B0D0A202070616464696E672D746F703A203270783B0D0A202070616464696E672D626F74746F6D3A203270783B0D0A7D0D0A2E752D63616C6C6F75743A6265666F7265207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(830) := '6B67726F756E642D636F6C6F723A20234646464646463B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E612D4D656E754261722D6C6162656C207B0D0A2020646973706C';
wwv_flow_api.g_varchar2_table(831) := '61793A20696E6C696E652D626C6F636B3B0D0A2020666F6E742D73697A653A20312E3472656D3B0D0A20206C696E652D6865696768743A20312E3672656D3B0D0A202070616464696E673A20313270783B0D0A2020746578742D6465636F726174696F6E';
wwv_flow_api.g_varchar2_table(832) := '3A206E6F6E653B0D0A2020666C65782D67726F773A20313B0D0A7D0D0A2E612D4D656E754261722D6C6162656C3A686F766572207B0D0A20206261636B67726F756E642D636C69703A2070616464696E672D626F783B0D0A2020746578742D6465636F72';
wwv_flow_api.g_varchar2_table(833) := '6174696F6E3A206E6F6E653B0D0A7D0D0A2E612D4D656E754261722D6C6162656C202B202E612D4D656E752D7375624D656E75436F6C207B0D0A2020666C65782D736872696E6B3A20303B0D0A2020616C69676E2D73656C663A2063656E7465723B0D0A';
wwv_flow_api.g_varchar2_table(834) := '20206C696E652D6865696768743A20313B0D0A7D0D0A2E612D4D656E754261722D6974656D207B0D0A2020646973706C61793A20666C65783B0D0A2020666C6F61743A206C6566743B0D0A202070616464696E673A20303B0D0A2020626F726465722D77';
wwv_flow_api.g_varchar2_table(835) := '696474683A2030203170783B0D0A2020626F782D736861646F773A206E6F6E653B0D0A20206D617267696E2D6C6566743A20303B0D0A20206261636B67726F756E642D636C69703A20636F6E74656E742D626F783B0D0A7D0D0A2E752D52544C202E612D';
wwv_flow_api.g_varchar2_table(836) := '4D656E754261722D6974656D207B0D0A2020666C6F61743A2072696768743B0D0A7D0D0A2E612D4D656E754261722D6974656D2E69732D657870616E646564207B0D0A20206F75746C696E653A206E6F6E653B0D0A7D0D0A2E612D4D656E754261722D69';
wwv_flow_api.g_varchar2_table(837) := '74656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0D0A2020626F726465722D6C6566742D7769647468';
wwv_flow_api.g_varchar2_table(838) := '3A20303B0D0A7D0D0A2E752D52544C202E612D4D656E754261722D6974656D3A66697273742D6368696C64207B0D0A2020626F726465722D72696768742D77696474683A20303B0D0A2020626F726465722D6C6566742D77696474683A203170783B0D0A';
wwv_flow_api.g_varchar2_table(839) := '7D0D0A2E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D4D656E754261722D';
wwv_flow_api.g_varchar2_table(840) := '6C6162656C207B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A2E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C2C0D0A2E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C';
wwv_flow_api.g_varchar2_table(841) := '6974203E202E612D4D656E752D7375624D656E75436F6C207B0D0A2020626F726465722D77696474683A20303B0D0A202070616464696E673A20302031327078203020303B0D0A7D0D0A2E752D52544C202E612D4D656E754261722D6974656D203E202E';
wwv_flow_api.g_varchar2_table(842) := '612D4D656E752D7375624D656E75436F6C2C0D0A2E752D52544C202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C207B0D0A202070616464696E672D72696768743A20303B';
wwv_flow_api.g_varchar2_table(843) := '0D0A202070616464696E672D6C6566743A20313270783B0D0A2020626F726465722D72696768743A20302021696D706F7274616E743B0D0A7D0D0A2E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49';
wwv_flow_api.g_varchar2_table(844) := '636F6E207B0D0A2020626F726465722D7261646975733A2031322E35253B0D0A7D0D0A2E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E3A6265666F7265207B0D0A2020636F6E74656E743A';
wwv_flow_api.g_varchar2_table(845) := '20275C65306332273B0D0A7D0D0A2E612D4D656E754261722D6974656D203E20627574746F6E202B202E612D4D656E752D7375624D656E75436F6C207B0D0A20206D617267696E2D6C6566743A202D3670783B0D0A7D0D0A2E752D52544C202E612D4D65';
wwv_flow_api.g_varchar2_table(846) := '6E754261722D6974656D203E20627574746F6E202B202E612D4D656E752D7375624D656E75436F6C207B0D0A20206D617267696E2D6C6566743A20303B0D0A20206D617267696E2D72696768743A202D3670783B0D0A7D0D0A2E742D4865616465722D6E';
wwv_flow_api.g_varchar2_table(847) := '61762D6C697374207B0D0A20206261636B67726F756E642D636F6C6F723A20236630663066303B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233630363036303B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(848) := '2E742D4865616465722D6E6176202E742D4D656E752D6261646765207B0D0A202070616464696E673A2030203670783B0D0A2020666F6E742D73697A653A20313170783B0D0A20206C696E652D6865696768743A20696E68657269743B0D0A2020666F6E';
wwv_flow_api.g_varchar2_table(849) := '742D7765696768743A203530303B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A2020646973706C61793A20696E6C696E652D626C6F636B3B0D0A202076657274696361';
wwv_flow_api.g_varchar2_table(850) := '6C2D616C69676E3A20746F703B0D0A20206D617267696E2D6C6566743A203470783B0D0A2020626F726465722D7261646975733A20313670783B0D0A7D0D0A2E752D52544C202E742D4865616465722D6E6176202E742D4D656E752D6261646765207B0D';
wwv_flow_api.g_varchar2_table(851) := '0A20206D617267696E2D6C6566743A20303B0D0A20206D617267696E2D72696768743A203470783B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D207B0D0A2020626F726465722D636F6C6F723A20236465646564';
wwv_flow_api.g_varchar2_table(852) := '653B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236432643264323B0D0A2020626F782D736861646F773A203020302030';
wwv_flow_api.g_varchar2_table(853) := '20317078202332333730633220696E7365743B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E69732D666F6375736564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233030303030';
wwv_flow_api.g_varchar2_table(854) := '303B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74';
wwv_flow_api.g_varchar2_table(855) := '2E69732D666F63757365642C0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272';
wwv_flow_api.g_varchar2_table(856) := '656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236461646164613B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E61';
wwv_flow_api.g_varchar2_table(857) := '2D4D656E754261722D6C6162656C2C0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C2C0D0A2E742D48656164';
wwv_flow_api.g_varchar2_table(858) := '65722D6E6176202E612D4D656E754261722D6974656D2E69732D657870616E646564202E612D4D656E754261722D6C6162656C2C0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E';
wwv_flow_api.g_varchar2_table(859) := '69732D657870616E646564202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E';
wwv_flow_api.g_varchar2_table(860) := '75436F6C202E612D49636F6E207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E38293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D65';
wwv_flow_api.g_varchar2_table(861) := '6E752D7375624D656E75436F6C3A686F766572202E612D49636F6E2C0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E69732D666F6375736564203E20627574746F6E202B202E612D4D656E752D7375624D656E75436F6C';
wwv_flow_api.g_varchar2_table(862) := '202E612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E69732D657870616E646564203E';
wwv_flow_api.g_varchar2_table(863) := '202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E2C0D0A2E742D4865616465722D6E6176202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E';
wwv_flow_api.g_varchar2_table(864) := '612D49636F6E207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020626F726465722D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4D656E75426172207B';
wwv_flow_api.g_varchar2_table(865) := '0D0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0D0A7D0D0A2E742D4D656E75426172202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20233338333833383B0D0A7D0D0A2E742D4D656E75426172202E';
wwv_flow_api.g_varchar2_table(866) := '612D4D656E754261722D6974656D207B0D0A2020626F726465722D636F6C6F723A20236534653465343B0D0A7D0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E69732D666F6375736564207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(867) := '2D636F6C6F723A20236630663066303B0D0A7D0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742C0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E612D4D656E752D';
wwv_flow_api.g_varchar2_table(868) := '2D63757272656E742E69732D666F63757365642C0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E69732D657870616E6465642C0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E612D4D656E752D2D6375';
wwv_flow_api.g_varchar2_table(869) := '7272656E742E69732D657870616E646564207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A7D0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E74202E612D';
wwv_flow_api.g_varchar2_table(870) := '4D656E754261722D6C6162656C2C0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D666F6375736564202E612D4D656E754261722D6C6162656C2C0D0A2E742D4D656E7542617220';
wwv_flow_api.g_varchar2_table(871) := '2E612D4D656E754261722D6974656D2E69732D657870616E646564202E612D4D656E754261722D6C6162656C2C0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E612D4D656E752D2D63757272656E742E69732D657870616E6465';
wwv_flow_api.g_varchar2_table(872) := '64202E612D4D656E754261722D6C6162656C207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D203E202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E20';
wwv_flow_api.g_varchar2_table(873) := '7B0D0A2020636F6C6F723A20726762612835362C2035362C2035362C20302E38293B0D0A7D0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E612D4D656E752D2D73706C6974203E202E612D4D656E752D7375624D656E75436F6C';
wwv_flow_api.g_varchar2_table(874) := '3A686F766572202E612D49636F6E2C0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E69732D666F6375736564203E20627574746F6E202B202E612D4D656E752D7375624D656E75436F6C202E612D49636F6E207B0D0A20206261';
wwv_flow_api.g_varchar2_table(875) := '636B67726F756E642D636F6C6F723A20726762612835362C2035362C2035362C20302E3135293B0D0A7D0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75';
wwv_flow_api.g_varchar2_table(876) := '436F6C202E612D49636F6E2C0D0A2E742D4D656E75426172202E612D4D656E754261722D6974656D2E69732D657870616E646564203E202E612D4D656E752D7375624D656E75436F6C3A686F766572202E612D49636F6E207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(877) := '756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20236461316231623B0D0A7D0D0A2E742D4E617654616273207B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(878) := '723A20236630663066303B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69742D7363726F6C6C6261722D7468756D62207B0D0A20206261636B67726F756E642D636F6C6F723A20236432643264323B0D0A2020626F782D736861646F773A2069';
wwv_flow_api.g_varchar2_table(879) := '6E7365742031707820302030203020236630663066303B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69742D7363726F6C6C6261722D7468756D623A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2023623462346234';
wwv_flow_api.g_varchar2_table(880) := '3B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261636B67726F756E643A20236630663066303B0D0A7D0D0A2E742D4E6176546162733A3A2D7765626B69742D7363726F6C6C6261';
wwv_flow_api.g_varchar2_table(881) := '722D747261636B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236361636163613B0D0A7D0D0A2E742D4E6176546162732D6974656D207B0D0A2020636F6C6F723A20233630363036303B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(882) := '6F723A20236234623462343B0D0A7D0D0A2E742D4E6176546162732D6974656D3A686F7665722C0D0A2E742D4E6176546162732D6974656D2E69732D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236461646164613B0D0A';
wwv_flow_api.g_varchar2_table(883) := '2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D4E6176546162732D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20233030303030303B0D0A2020636F6C6F723A20236461646164613B0D0A7D0D0A2E742D506F70';
wwv_flow_api.g_varchar2_table(884) := '75704C4F562D6C696E6B7320613A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233233373063323B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D506F7075704C4F562D726573756C7473536574207472';
wwv_flow_api.g_varchar2_table(885) := '3A686F766572207464207B0D0A20206261636B67726F756E642D636F6C6F723A20234543463246422021696D706F7274616E743B0D0A7D0D0A2E742D506F7075704C4F562D726573756C74735365742074723A6E74682D6368696C6428326E2920746420';
wwv_flow_api.g_varchar2_table(886) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20234641464146413B0D0A7D0D0A2E742D506F7075704C4F562D726573756C74735365742D6C696E6B2C0D0A2E75692D7769646765742D636F6E74656E7420612E742D506F7075704C4F562D7265';
wwv_flow_api.g_varchar2_table(887) := '73756C74735365742D6C696E6B207B0D0A2020636F6C6F723A20233233373063323B0D0A7D0D0A2E742D506167652D2D706F7075704C4F56207B0D0A20206261636B67726F756E642D636F6C6F723A20234646463B0D0A7D0D0A2E742D506F7075704C4F';
wwv_flow_api.g_varchar2_table(888) := '562D616374696F6E73207B0D0A20206261636B67726F756E642D636F6C6F723A20234644464446443B0D0A2020626F782D736861646F773A2030202D3170782030207267626128302C20302C20302C20302E31352920696E7365743B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(889) := '426F6479202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D7469746C65202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A2023343034';
wwv_flow_api.g_varchar2_table(890) := '3034303B0D0A7D0D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E742D506F7075704C4F562D6C696E6B7320612C0D0A2E';
wwv_flow_api.g_varchar2_table(891) := '742D427574746F6E526567696F6E202E742D506F7075704C4F562D6C696E6B732061207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D506F7075704C4F562D6C696E6B7320613A686F766572207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(892) := '642D636F6C6F723A20233363383964633B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233765376537653B0D0A7D0D0A2E742D';
wwv_flow_api.g_varchar2_table(893) := '426F64792D7469746C65202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020636F6C6F723A20233830383038303B0D0A7D0D0A2E742D426F64792D696E666F202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A2020';
wwv_flow_api.g_varchar2_table(894) := '636F6C6F723A20233830383038303B0D0A7D0D0A2E742D526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E2C0D0A2E742D427574746F6E526567696F6E202E742D506F7075704C4F562D706167696E6174696F6E207B0D0A202063';
wwv_flow_api.g_varchar2_table(895) := '6F6C6F723A20233830383038303B0D0A7D0D0A2E612D506F7075704C4F562D736561726368426172207B0D0A202070616464696E673A203870783B0D0A7D0D0A2E612D506F7075704C4F562D726573756C7473202E612D49636F6E4C6973742D6974656D';
wwv_flow_api.g_varchar2_table(896) := '207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D506F7075704C4F562D726573756C7473202E612D49636F6E4C6973742D6974656D3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20233233373063323B';
wwv_flow_api.g_varchar2_table(897) := '0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A20302030203020317078202331663634616320696E7365743B0D0A7D0D0A2E612D506F7075704C4F562D726573756C7473202E612D49636F6E4C6973742D6974656D';
wwv_flow_api.g_varchar2_table(898) := '3A686F7665722061207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D506F7075704C4F562D726573756C7473202E612D47562D6C6F61644D6F7265207B0D0A2020626F726465722D746F702D636F6C6F723A207267626128302C20';
wwv_flow_api.g_varchar2_table(899) := '302C20302C20302E3135293B0D0A7D0D0A2E612D47562D6C6F61644D6F7265427574746F6E207B0D0A2020636F6C6F723A20233338333833383B0D0A20206261636B67726F756E642D636F6C6F723A20236638663866383B0D0A2020626F782D73686164';
wwv_flow_api.g_varchar2_table(900) := '6F773A20302030203020317078207267626128302C20302C20302C20302E3132352920696E7365743B0D0A7D0D0A2E612D47562D6C6F61644D6F7265427574746F6E3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(901) := '6666663B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E31352920696E7365743B0D0A7D0D0A2E612D47562D6C6F61644D6F7265427574746F6E3A666F637573207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(902) := '756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E612D47562D6C6F61644D6F7265427574746F6E3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0D0A7D0D0A2E612D47562D6C6F61644D6F';
wwv_flow_api.g_varchar2_table(903) := '7265427574746F6E3A6163746976653A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365742C20302030203170782030207267626128352C203131342C203230362C20302E3235293B0D0A';
wwv_flow_api.g_varchar2_table(904) := '7D0D0A2E617065782D6974656D2D67726F75702D2D706F7075702D6C6F76202E617065782D6974656D2D6D756C74692D6974656D203E207370616E207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E30';
wwv_flow_api.g_varchar2_table(905) := '35293B0D0A7D0D0A2E617065782D6974656D2D67726F75702D2D706F7075702D6C6F76202E617065782D6974656D2D6D756C74692D6974656D2E69732D616374697665203E207370616E207B0D0A2020626F782D736861646F773A203020302030203170';
wwv_flow_api.g_varchar2_table(906) := '78202332333730633220696E7365743B0D0A7D0D0A2E617065782D6974656D2D67726F75702D2D706F7075702D6C6F76202E617065782D6974656D2D6D756C74692D72656D6F7665207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E';
wwv_flow_api.g_varchar2_table(907) := '73706172656E743B0D0A7D0D0A2E617065782D6974656D2D67726F75702D2D706F7075702D6C6F76202E617065782D6974656D2D6D756C74692D72656D6F76653A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612830';
wwv_flow_api.g_varchar2_table(908) := '2C20302C20302C20302E3035293B0D0A7D0D0A2E617065782D6974656D2D746578742E612D506F7075704C4F562D7365617263682C0D0A2E617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F762C0D0A2E617065782D69';
wwv_flow_api.g_varchar2_table(909) := '74656D2D6D756C7469207B0D0A2020636F6C6F723A20233230323032303B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F726465722D636F6C6F723A20236466646664663B0D0A7D0D0A2E617065782D697465';
wwv_flow_api.g_varchar2_table(910) := '6D2D746578742E612D506F7075704C4F562D7365617263683A666F6375732C0D0A2E617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F763A666F6375732C0D0A2E617065782D6974656D2D6D756C74693A666F6375732C';
wwv_flow_api.g_varchar2_table(911) := '0D0A2E617065782D6974656D2D746578742E612D506F7075704C4F562D7365617263682E69732D666F63757365642C0D0A2E617065782D6974656D2D746578742E617065782D6974656D2D706F7075702D6C6F762E69732D666F63757365642C0D0A2E61';
wwv_flow_api.g_varchar2_table(912) := '7065782D6974656D2D6D756C74692E69732D666F6375736564207B0D0A2020636F6C6F723A20233230323032303B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666662021696D706F7274616E743B0D0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(913) := '6C6F723A20233233373063322021696D706F7274616E743B0D0A7D0D0A2E617065782D6974656D2D746578742E612D506F7075704C4F562D7365617263683A666F637573202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D69';
wwv_flow_api.g_varchar2_table(914) := '74656D2D746578742E617065782D6974656D2D706F7075702D6C6F763A666F637573202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D6D756C74693A666F637573202B202E612D427574746F6E2D2D706F707570';
wwv_flow_api.g_varchar2_table(915) := '4C4F562C0D0A2E617065782D6974656D2D746578742E612D506F7075704C4F562D7365617263682E69732D666F6375736564202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D746578742E617065782D6974656D';
wwv_flow_api.g_varchar2_table(916) := '2D706F7075702D6C6F762E69732D666F6375736564202B202E612D427574746F6E2D2D706F7075704C4F562C0D0A2E617065782D6974656D2D6D756C74692E69732D666F6375736564202B202E612D427574746F6E2D2D706F7075704C4F56207B0D0A20';
wwv_flow_api.g_varchar2_table(917) := '20626F782D736861646F773A20302030203020317078202332333730633220696E7365743B0D0A7D0D0A2E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E742E612D506F7075704C4F562D6469616C6F67207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(918) := '726F756E642D636F6C6F723A20236666663B0D0A7D0D0A2E612D506F7075704C4F562D646F5365617263683A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365743B0D0A7D0D0A2E612D50';
wwv_flow_api.g_varchar2_table(919) := '6F7075704C4F562D7365617263684261722C0D0A2E612D506F7075704C4F562D636C656172207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E612D506F7075704C4F562D';
wwv_flow_api.g_varchar2_table(920) := '636C656172427574746F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E612D506F7075704C4F562D636C656172427574746F6E3A686F766572';
wwv_flow_api.g_varchar2_table(921) := '207B0D0A2020636F6C6F723A20236666663B0D0A20206261636B67726F756E642D636F6C6F723A20233233373063323B0D0A7D0D0A2E612D506F7075704C4F562D636C656172427574746F6E3A666F637573207B0D0A2020626F782D736861646F773A20';
wwv_flow_api.g_varchar2_table(922) := '302030203020317078202332333730633220696E7365743B0D0A7D0D0A2E742D526567696F6E207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D526567696F6E2C0D0A2E742D436F6E';
wwv_flow_api.g_varchar2_table(923) := '74656E74426C6F636B2D2D6C696768744247202E742D436F6E74656E74426C6F636B2D626F6479207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D426F6479202E6669656C64646174612062207B0D0A';
wwv_flow_api.g_varchar2_table(924) := '2020636F6C6F723A20233365336533653B0D0A7D0D0A2E742D426F64792D7469746C65202E6669656C64646174612062207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D696E666F202E6669656C6464617461206220';
wwv_flow_api.g_varchar2_table(925) := '7B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D526567696F6E202E6669656C646461746120622C0D0A2E742D427574746F6E526567696F6E202E6669656C64646174612062207B0D0A2020636F6C6F723A20233430343034303B0D';
wwv_flow_api.g_varchar2_table(926) := '0A7D0D0A2E742D526567696F6E2D686561646572207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A';
wwv_flow_api.g_varchar2_table(927) := '2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(928) := '3A20233236323632363B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E643A207472616E73706172656E743B0D0A2020636F6C6F723A20233230323032303B0D0A7D0D';
wwv_flow_api.g_varchar2_table(929) := '0A2E742D526567696F6E2D2D737461636B6564207B0D0A2020626F726465722D7261646975733A20302021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572207B0D0A';
wwv_flow_api.g_varchar2_table(930) := '20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E';
wwv_flow_api.g_varchar2_table(931) := '2D2D6E6F55492C0D0A2E742D526567696F6E2D2D6E6F426F72646572203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D526567696F6E2D2D';
wwv_flow_api.g_varchar2_table(932) := '616363656E7431203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236464313830613B0D0A2020636F6C6F723A20236665653965383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431';
wwv_flow_api.g_varchar2_table(933) := '203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7431203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(934) := '6F723A20236665653965383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74312E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20236464313830613B0D0A7D';
wwv_flow_api.g_varchar2_table(935) := '0D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233133423643463B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E742D5265';
wwv_flow_api.g_varchar2_table(936) := '67696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7432203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D';
wwv_flow_api.g_varchar2_table(937) := '6C696E6B207B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74322E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(938) := '3A20233133423643463B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233245424642433B0D0A2020636F6C6F723A202366306663';
wwv_flow_api.g_varchar2_table(939) := '66623B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7433203E202E742D526567696F6E2D6865616465';
wwv_flow_api.g_varchar2_table(940) := '72202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74332E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D68656164';
wwv_flow_api.g_varchar2_table(941) := '6572207B0D0A2020636F6C6F723A20233245424642433B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233343414638353B0D0A20';
wwv_flow_api.g_varchar2_table(942) := '20636F6C6F723A20236630666166363B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7434203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7434203E202E74';
wwv_flow_api.g_varchar2_table(943) := '2D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74342E742D526567696F6E2D2D74657874436F6E74656E74203E202E';
wwv_flow_api.g_varchar2_table(944) := '742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233343414638353B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(945) := '3A20233831424235463B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(946) := '2D616363656E7435203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74352E742D526567696F6E2D2D7465';
wwv_flow_api.g_varchar2_table(947) := '7874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233831424235463B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7436203E202E742D526567696F6E2D686561646572207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(948) := '6B67726F756E642D636F6C6F723A20234444444535333B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7436203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F5549';
wwv_flow_api.g_varchar2_table(949) := '2C0D0A2E742D526567696F6E2D2D616363656E7436203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7436';
wwv_flow_api.g_varchar2_table(950) := '2E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20234444444535333B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7437203E202E742D526567696F6E2D6865';
wwv_flow_api.g_varchar2_table(951) := '61646572207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7437203E202E742D526567696F6E2D686561646572202E74';
wwv_flow_api.g_varchar2_table(952) := '2D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7437203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E742D5265';
wwv_flow_api.g_varchar2_table(953) := '67696F6E2D2D616363656E74372E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20234642434534413B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7438203E';
wwv_flow_api.g_varchar2_table(954) := '202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20234544383133453B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7438203E202E742D526567';
wwv_flow_api.g_varchar2_table(955) := '696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7438203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A202366666666';
wwv_flow_api.g_varchar2_table(956) := '66663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74382E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20234544383133453B0D0A7D0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(957) := '6F6E2D2D616363656E7439203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20234539354235343B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363';
wwv_flow_api.g_varchar2_table(958) := '656E7439203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E7439203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A20';
wwv_flow_api.g_varchar2_table(959) := '20636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E74392E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A2023453935423534';
wwv_flow_api.g_varchar2_table(960) := '3B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743130203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20234538354438383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(961) := '2E742D526567696F6E2D2D616363656E743130203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743130203E202E742D526567696F6E2D686561646572202E742D42';
wwv_flow_api.g_varchar2_table(962) := '7574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431302E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D';
wwv_flow_api.g_varchar2_table(963) := '0A2020636F6C6F723A20234538354438383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743131203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20234341353839443B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(964) := '6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743131203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743131203E202E742D52';
wwv_flow_api.g_varchar2_table(965) := '6567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431312E742D526567696F6E2D2D74657874436F6E74656E74203E202E74';
wwv_flow_api.g_varchar2_table(966) := '2D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20234341353839443B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743132203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(967) := '3A20233835344539423B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743132203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(968) := '2D2D616363656E743132203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236636663066383B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431322E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(969) := '2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233835344539423B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743133203E202E742D526567696F6E2D686561646572207B0D0A20';
wwv_flow_api.g_varchar2_table(970) := '206261636B67726F756E642D636F6C6F723A20233541363841443B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743133203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D';
wwv_flow_api.g_varchar2_table(971) := '2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743133203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D61';
wwv_flow_api.g_varchar2_table(972) := '6363656E7431332E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20233541363841443B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743134203E202E742D52';
wwv_flow_api.g_varchar2_table(973) := '6567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20234146424143353B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E742D526567696F6E2D2D616363656E743134203E202E742D526567696F6E2D';
wwv_flow_api.g_varchar2_table(974) := '686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743134203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A2020636F6C6F723A20233331336134343B';
wwv_flow_api.g_varchar2_table(975) := '0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431342E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A20234146424143353B0D0A7D0D0A2E742D526567696F6E';
wwv_flow_api.g_varchar2_table(976) := '2D2D616363656E743135203E202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20233645383539383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D61636365';
wwv_flow_api.g_varchar2_table(977) := '6E743135203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6E6F55492C0D0A2E742D526567696F6E2D2D616363656E743135203E202E742D526567696F6E2D686561646572202E742D427574746F6E2D2D6C696E6B207B0D0A';
wwv_flow_api.g_varchar2_table(978) := '2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D526567696F6E2D2D616363656E7431352E742D526567696F6E2D2D74657874436F6E74656E74203E202E742D526567696F6E2D686561646572207B0D0A2020636F6C6F723A202336453835';
wwv_flow_api.g_varchar2_table(979) := '39383B0D0A7D0D0A2E742D526567696F6E2D626F6479207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D526567696F6E2D2D6869646553686F772E69732D636F6C6C6170736564207B0D0A2020626F726465722D626F74746F6D2D';
wwv_flow_api.g_varchar2_table(980) := '636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D6163';
wwv_flow_api.g_varchar2_table(981) := '74696F6E73202E742D526567696F6E2D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D73696465202E742D526567696F6E207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(982) := '642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E2C0D0A2E742D526567696F6E2D686561646572207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A2E742D526567696F6E2D2D6E6F424720';
wwv_flow_api.g_varchar2_table(983) := '7B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D526567696F6E207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E74';
wwv_flow_api.g_varchar2_table(984) := '3B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E207B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C';
wwv_flow_api.g_varchar2_table(985) := '20302E34293B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C';
wwv_flow_api.g_varchar2_table(986) := '202E612D546162732D627574746F6E3A686F766572207B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E312920696E7365742C20302031707820317078207267626128302C20302C20302C2030';
wwv_flow_api.g_varchar2_table(987) := '2E3035293B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A6163746976652C0D0A2E742D5265';
wwv_flow_api.g_varchar2_table(988) := '67696F6E2D2D6361726F7573656C202E612D546162732D627574746F6E3A6163746976653A666F637573207B0D0A20206F7061636974793A20313B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C2030';
wwv_flow_api.g_varchar2_table(989) := '2E312920696E7365742C20302031707820317078207267626128302C20302C20302C20302E30352920696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A7D0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(990) := '696F6E2D2D6361726F7573656C202E612D546162732D6E6578742D726567696F6E207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D546162732D70';
wwv_flow_api.g_varchar2_table(991) := '726576696F75732D726567696F6E207B0D0A2020626F726465722D7261646975733A2030203270782032707820303B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E612D';
wwv_flow_api.g_varchar2_table(992) := '546162732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E34293B0D0A7D0D0A2E742D526567696F6E2D2D6361726F75';
wwv_flow_api.g_varchar2_table(993) := '73656C202E612D526567696F6E2D6361726F7573656C4E61764974656D2E612D546162732D73656C6563746564202E612D526567696F6E2D6361726F7573656C4C696E6B3A666F637573207B0D0A20206261636B67726F756E642D636F6C6F723A202364';
wwv_flow_api.g_varchar2_table(994) := '61316231623B0D0A7D0D0A2E742D526567696F6E2D2D6361726F7573656C202E612D526567696F6E2D6361726F7573656C4C696E6B207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A20';
wwv_flow_api.g_varchar2_table(995) := '20626F726465722D7261646975733A20313030253B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A2E742D5265706F72742D63656C6C2C0D0A2E742D526570';
wwv_flow_api.g_varchar2_table(996) := '6F72742D636F6C48656164207B0D0A2020626F726465723A2031707820736F6C696420236536653665363B0D0A7D0D0A2E742D5265706F72742D7265706F7274207472202E742D5265706F72742D63656C6C3A6C6173742D6368696C642C0D0A2E742D52';
wwv_flow_api.g_varchar2_table(997) := '65706F72742D7265706F7274207472202E742D5265706F72742D636F6C486561643A6C6173742D6368696C64207B0D0A2020626F726465722D72696768743A2031707820736F6C696420236536653665363B0D0A7D0D0A2E752D52544C202E742D526570';
wwv_flow_api.g_varchar2_table(998) := '6F72742D7265706F7274207472202E742D5265706F72742D63656C6C3A6C6173742D6368696C642C0D0A2E752D52544C202E742D5265706F72742D7265706F7274207472202E742D5265706F72742D636F6C486561643A6C6173742D6368696C64207B0D';
wwv_flow_api.g_varchar2_table(999) := '0A2020626F726465722D6C6566743A2031707820736F6C696420236536653665363B0D0A7D0D0A2E742D5265706F72742D7265706F72742074723A6C6173742D6368696C64202E742D5265706F72742D63656C6C207B0D0A2020626F726465722D626F74';
wwv_flow_api.g_varchar2_table(1000) := '746F6D3A2031707820736F6C696420236536653665363B0D0A7D0D0A2E742D5265706F7274202E69732D737475636B202E742D5265706F72742D636F6C48656164207B0D0A20206261636B67726F756E642D636F6C6F723A2072676261283235352C2032';
wwv_flow_api.g_varchar2_table(1001) := '35352C203235352C20302E3935293B0D0A20202D7765626B69742D6261636B64726F702D66696C7465723A20626C757228347078293B0D0A7D0D0A2E742D526567696F6E2D2D6E6F50616464696E67202E742D5265706F72742D2D686F72697A6F6E7461';
wwv_flow_api.g_varchar2_table(1002) := '6C426F7264657273202E69732D737475636B202E742D5265706F72742D636F6C486561642C0D0A2E742D5265706F72742D2D696E6C696E65202E69732D737475636B202E742D5265706F72742D636F6C48656164207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1003) := '2D636F6C6F723A2072676261283235352C203235352C203235352C20302E3935293B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D5265706F72742D2D726F774869';
wwv_flow_api.g_varchar2_table(1004) := '67686C69676874202E742D5265706F72742D7265706F72742074723A686F766572202E742D5265706F72742D63656C6C2C0D0A2E742D5265706F72742D2D726F77486967686C69676874202E742D5265706F72742D7265706F72742074723A6E74682D63';
wwv_flow_api.g_varchar2_table(1005) := '68696C64286F6464293A686F766572202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166612021696D706F7274616E743B0D0A7D0D0A2E742D5265706F72742D2D737461746963526F77436F';
wwv_flow_api.g_varchar2_table(1006) := '6C6F7273202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D5265';
wwv_flow_api.g_varchar2_table(1007) := '706F72742D2D616C74526F777344656661756C74202E742D5265706F72742D7265706F72742074723A6E74682D6368696C64286F646429202E742D5265706F72742D63656C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20726762612830';
wwv_flow_api.g_varchar2_table(1008) := '2C20302C20302C20302E3035293B0D0A7D0D0A2E742D5265706F72742D706167696E6174696F6E5465787420622C0D0A2E742D5265706F72742D706167696E6174696F6E5465787420613A686F766572207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1009) := '6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E742D5265706F72742D6C696E6B73207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E303735293B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1010) := '67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A2E742D536561726368526573756C74732D64657363207B0D0A2020636F6C6F723A20233234323432343B0D0A7D0D0A2E742D53656172636852657375';
wwv_flow_api.g_varchar2_table(1011) := '6C74732D64617465207B0D0A2020636F6C6F723A20233731373137313B0D0A7D0D0A2E742D536561726368526573756C74732D6D697363207B0D0A2020636F6C6F723A20233731373137313B0D0A7D0D0A2E742D526567696F6E202E742D536561726368';
wwv_flow_api.g_varchar2_table(1012) := '526573756C74732D64657363207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D526567696F6E202E742D536561726368526573756C74732D64617465207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D5265';
wwv_flow_api.g_varchar2_table(1013) := '67696F6E202E742D536561726368526573756C74732D6D697363207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E612D53746172526174696E672D7374617273207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E';
wwv_flow_api.g_varchar2_table(1014) := '3135293B0D0A7D0D0A2E612D53746172526174696E672D73746172732E69732D666F6375736564207B0D0A2020626F782D736861646F773A203020302030203170782063757272656E74436F6C6F7220696E7365743B0D0A7D0D0A2E612D537461725261';
wwv_flow_api.g_varchar2_table(1015) := '74696E672D73746172732E69732D666F6375736564202E612D53746172526174696E672D73746172732D6667202E612D53746172526174696E672D73746172207B0D0A2020746578742D736861646F773A20302030203270782063757272656E74436F6C';
wwv_flow_api.g_varchar2_table(1016) := '6F723B0D0A7D0D0A2E612D53746172526174696E672D73746172732D6667207B0D0A2020636F6C6F723A20236461316231623B0D0A7D0D0A2E612D53746172526174696E672D76616C7565207B0D0A2020636F6C6F723A20233234323432343B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1017) := '0A2E612D53746172526174696E672D636C6561723A666F637573207B0D0A2020626F782D736861646F773A20696E7365742023646131623162203020302030203170783B0D0A7D0D0A2E612D53746172526174696E672D2D64697361626C6564202E612D';
wwv_flow_api.g_varchar2_table(1018) := '53746172526174696E672D73746172732D6667207B0D0A2020636F6C6F723A20696E697469616C3B0D0A7D0D0A2E742D5374617475734C6973742D626C6F636B486561646572207B0D0A2020636F6C6F723A20233236323632363B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(1019) := '726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A2020626F726465722D746F702D636F6C6F723A207267626128302C20302C2030';
wwv_flow_api.g_varchar2_table(1020) := '2C20302E3035293B0D0A7D0D0A2E742D5374617475734C6973742D68656164657254657874416C742C0D0A2E742D5374617475734C6973742D617474722C0D0A2E742D5374617475734C6973742D7465787444657363207B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1021) := '3733373337333B0D0A7D0D0A2E742D5374617475734C6973742D6974656D5469746C65207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B';
wwv_flow_api.g_varchar2_table(1022) := '6572207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E35293B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F782D736861646F';
wwv_flow_api.g_varchar2_table(1023) := '773A20302030203020317078207267626128302C20302C20302C20302E312920696E7365743B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C6973742D6D61726B65723A6166746572207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1024) := '67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E32293B0D0A2020626F726465722D7261646975733A2032707820327078203020303B0D0A7D0D0A2E742D5374617475734C6973742D2D6461746573202E742D5374617475734C';
wwv_flow_api.g_varchar2_table(1025) := '6973742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E30352920696E7365743B0D0A7D0D0A2E742D53';
wwv_flow_api.g_varchar2_table(1026) := '74617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6D61726B6572207B0D0A2020626F726465722D7261646975733A20323470783B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1027) := '723A20233430343034303B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D63';
wwv_flow_api.g_varchar2_table(1028) := '6F6D706C657465202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233730373037303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973';
wwv_flow_api.g_varchar2_table(1029) := '742D6974656D2E69732D64616E676572202E742D5374617475734C6973742D6D61726B65722C0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6572726F72202E742D537461747573';
wwv_flow_api.g_varchar2_table(1030) := '4C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666336233303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D6F70656E202E74';
wwv_flow_api.g_varchar2_table(1031) := '2D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233463643936343B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973742D6974656D2E69732D';
wwv_flow_api.g_varchar2_table(1032) := '7761726E696E67202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666636330303B0D0A7D0D0A2E742D5374617475734C6973742D2D62756C6C657473202E742D5374617475734C6973';
wwv_flow_api.g_varchar2_table(1033) := '742D6974656D2E69732D6E756C6C202E742D5374617475734C6973742D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3935293B0D0A2020636F6C6F723A2072676261283235352C20';
wwv_flow_api.g_varchar2_table(1034) := '3235352C203235352C20302E3735293B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E30352920696E7365743B0D0A7D0D0A2E742D5374617475734C6973742D6974656D49636F6E207B0D0A20';
wwv_flow_api.g_varchar2_table(1035) := '20636F6C6F723A207267626128302C20302C20302C20302E34293B0D0A2020626F782D736861646F773A203020302030207267626128302C20302C20302C20302E322920696E7365743B0D0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1036) := '6666663B0D0A7D0D0A2E612D5461626C652E752D5265706F72742074642C0D0A2E612D5461626C652E752D5265706F7274207468207B0D0A2020626F726465722D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E612D5461626C652E752D';
wwv_flow_api.g_varchar2_table(1037) := '5265706F72742E7461626C652D7374726F6B652074642C0D0A2E612D5461626C652E752D5265706F72742E7461626C652D7374726F6B65207468207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D';
wwv_flow_api.g_varchar2_table(1038) := '0D0A2E612D5461626C652E752D5265706F72742074723A6E74682D6368696C64286576656E292074642C0D0A2E612D5461626C652E752D5265706F72742074723A6E74682D6368696C64286576656E292074685B73636F70653D22726F77225D207B0D0A';
wwv_flow_api.g_varchar2_table(1039) := '20206261636B67726F756E642D636F6C6F723A20236666663B0D0A7D0D0A2E612D5461626C652E752D5265706F72742E7461626C652D7374726970652074723A6E74682D6368696C64286576656E292074642C0D0A2E612D5461626C652E752D5265706F';
wwv_flow_api.g_varchar2_table(1040) := '72742E7461626C652D7374726970652074723A6E74682D6368696C64286576656E292074685B73636F70653D22726F77225D207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1041) := '406D6564696120286D61782D77696474683A20353630707829207B0D0A20202E612D5461626C652D2D7265666C6F772E75692D726573706F6E736976652074642C0D0A20202E612D5461626C652D2D7265666C6F772E75692D726573706F6E7369766520';
wwv_flow_api.g_varchar2_table(1042) := '7468207B0D0A20202020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A20207D0D0A7D0D0A2E752D5265706F7274202E752D5265706F72742D6865616465722C0D0A2E752D5265706F727420';
wwv_flow_api.g_varchar2_table(1043) := '7468207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A2020636F6C6F723A20233030303B0D0A7D0D0A2E752D5265706F72742074685B73636F70653D22726F7767726F7570225D207B';
wwv_flow_api.g_varchar2_table(1044) := '0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E752D5265706F72742074685B73636F70653D22726F77225D207B0D0A20206261636B67726F756E642D636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1045) := '3B0D0A7D0D0A2E752D5265706F7274207464207B0D0A2020636F6C6F723A20233030303B0D0A20206261636B67726F756E642D636F6C6F723A20236666663B0D0A7D0D0A2E752D5265706F72742074723A6E74682D6368696C64286576656E292074642C';
wwv_flow_api.g_varchar2_table(1046) := '0D0A2E752D5265706F72742074723A6E74682D6368696C64286576656E292074685B73636F70653D22726F77225D207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E303235293B0D0A7D0D0A2E752D52';
wwv_flow_api.g_varchar2_table(1047) := '65706F72742074642C0D0A2E752D5265706F7274207468207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E752D5265706F72742D2D73746174696342472074723A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1048) := '6576656E292074642C0D0A2E752D5265706F72742D2D73746174696342472074723A6E74682D6368696C64286576656E292074685B73636F70653D22726F77225D207B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C2030';
wwv_flow_api.g_varchar2_table(1049) := '2E303235293B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B207B0D0A2020626F782D736861646F773A2030202D3270782030202332333730633220696E73';
wwv_flow_api.g_varchar2_table(1050) := '65743B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365743B0D0A7D0D0A2E742D546162732D2D7069';
wwv_flow_api.g_varchar2_table(1051) := '6C6C207B0D0A20206261636B67726F756E642D636F6C6F723A20236639663966393B0D0A2020626F726465722D7261646975733A203270783B0D0A2020626F726465722D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1052) := '782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D49636F6E207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D546162732D';
wwv_flow_api.g_varchar2_table(1053) := '2D70696C6C202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233236323632363B0D0A2020626F726465722D6C6566742D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D546162732D2D70696C6C20';
wwv_flow_api.g_varchar2_table(1054) := '2E742D546162732D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A666F637573207B0D0A2020626F782D736861';
wwv_flow_api.g_varchar2_table(1055) := '646F773A20302030203020317078202332333730633220696E7365743B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6C696E6B3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D';
wwv_flow_api.g_varchar2_table(1056) := '0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E30352920696E7365743B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D3A66697273742D6368696C64202E742D5461';
wwv_flow_api.g_varchar2_table(1057) := '62732D6C696E6B207B0D0A2020626F726465722D7261646975733A2032707820302030203270783B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D3A6C6173742D6368696C64202E742D546162732D6C696E6B207B0D0A20';
wwv_flow_api.g_varchar2_table(1058) := '20626F726465722D72696768742D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D546162732D2D70696C6C202E742D546162732D6974656D2E69732D616374697665202E742D546162732D6C696E6B207B0D0A2020';
wwv_flow_api.g_varchar2_table(1059) := '6261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D49636F6E207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D54';
wwv_flow_api.g_varchar2_table(1060) := '6162732D6C696E6B207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20';
wwv_flow_api.g_varchar2_table(1061) := '302C20302C20302E303235293B0D0A7D0D0A2E742D546162732D2D73696D706C65202E742D546162732D6C696E6B3A616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3135293B0D0A7D';
wwv_flow_api.g_varchar2_table(1062) := '0D0A2E742D426F6479202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233234323432343B0D0A7D0D0A2E742D426F64792D7469746C65202E742D546162732D2D73696D706C65202E742D546162';
wwv_flow_api.g_varchar2_table(1063) := '732D6C696E6B207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D526567696F6E202E742D546162732D2D73696D706C65202E742D546162732D6C696E6B207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E617065';
wwv_flow_api.g_varchar2_table(1064) := '782D726473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F773A2030202D3270782030202332333730633220696E7365743B0D0A7D0D0A2E617065782D72647320613A666F637573207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1065) := '782D736861646F773A20302030203020317078202332333730633220696E7365743B0D0A7D0D0A2E617065782D7264732061207B0D0A2020636F6C6F723A20233234323432343B0D0A7D0D0A2E742D426F64792D7469746C65202E617065782D72647320';
wwv_flow_api.g_varchar2_table(1066) := '612C0D0A2E742D426F64792D696E666F202E617065782D7264732061207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D526567696F6E202E617065782D7264732061207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1067) := '0A2E617065782D72647320613A686F766572207B0D0A2020636F6C6F723A20233233373063323B0D0A7D0D0A2E617065782D726473202E617065782D7264732D73656C65637465642061207B0D0A2020636F6C6F723A20233233373063323B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1068) := '2E617065782D7264732D686F7665722E6C6566742061207B0D0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C2023666666666666203530252C2072676261283235352C203235352C203235';
wwv_flow_api.g_varchar2_table(1069) := '352C2030292031303025293B0D0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C2023666666666666203530252C2072676261283235352C203235352C203235352C2030292031303025293B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1070) := '0A2E617065782D7264732D686F7665722E72696768742061207B0D0A20206261636B67726F756E643A202D7765626B69742D6C696E6561722D6772616469656E74286C6566742C20236666666666662030252C2072676261283235352C203235352C2032';
wwv_flow_api.g_varchar2_table(1071) := '35352C2030292031252C202366666666666620353025293B0D0A20206261636B67726F756E643A206C696E6561722D6772616469656E7428746F2072696768742C20236666666666662030252C2072676261283235352C203235352C203235352C203029';
wwv_flow_api.g_varchar2_table(1072) := '2031252C202366666666666620353025293B0D0A7D0D0A2E617065782D7264732D6974656D2D2D68696E742061207370616E207B0D0A2020626F782D736861646F773A2030202D3270782030207267626128302C20302C20302C20302E322920696E7365';
wwv_flow_api.g_varchar2_table(1073) := '743B0D0A7D0D0A2E766572746963616C2D726473202E617065782D726473202E617065782D7264732D73656C6563746564207370616E2C0D0A2E742D426F64792D73696465202E617065782D726473202E617065782D7264732D73656C65637465642073';
wwv_flow_api.g_varchar2_table(1074) := '70616E207B0D0A2020626F782D736861646F773A2034707820302030202332333730633220696E7365743B0D0A7D0D0A2E752D52544C202E766572746963616C2D726473202E617065782D726473202E617065782D7264732D73656C6563746564207370';
wwv_flow_api.g_varchar2_table(1075) := '616E2C0D0A2E752D52544C202E742D426F64792D73696465202E617065782D726473202E617065782D7264732D73656C6563746564207370616E207B0D0A2020626F782D736861646F773A202D34707820302030202332333730633220696E7365743B0D';
wwv_flow_api.g_varchar2_table(1076) := '0A7D0D0A2E612D546167436C6F75642D6C696E6B207B0D0A2020626F726465722D636F6C6F723A20236632663266323B0D0A2020626F726465722D7261646975733A203270783B0D0A20206261636B67726F756E643A20236661666166613B0D0A202074';
wwv_flow_api.g_varchar2_table(1077) := '72616E736974696F6E3A206261636B67726F756E642D636F6C6F7220302E32732C20626F726465722D636F6C6F7220302E32732C20626F782D736861646F7720302E32732C20636F6C6F7220302E32733B0D0A2020636F6C6F723A20233232366562653B';
wwv_flow_api.g_varchar2_table(1078) := '0D0A7D0D0A2E612D546167436C6F75642D6C696E6B207370616E207B0D0A20207472616E736974696F6E3A20636F6C6F7220302E32733B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B3A686F766572207B0D0A2020746578742D6465636F726174';
wwv_flow_api.g_varchar2_table(1079) := '696F6E3A206E6F6E653B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020626F726465722D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(1080) := '20302030203020327078202364613162316220696E7365743B0D0A7D0D0A2E612D546167436C6F75642D6C696E6B3A686F766572207370616E207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E612D546167436C6F75642D636F756E74';
wwv_flow_api.g_varchar2_table(1081) := '207B0D0A2020636F6C6F723A20233636363636363B0D0A2020666F6E742D7765696768743A203530303B0D0A7D0D0A2E742D54696D656C696E65207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D54696D656C696E652D6974656D';
wwv_flow_api.g_varchar2_table(1082) := '207B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D54696D656C696E652D757365726E616D652C0D0A2E742D54696D656C696E652D646174652C0D0A2E742D54696D65';
wwv_flow_api.g_varchar2_table(1083) := '6C696E652D64657363207B0D0A2020636F6C6F723A20233733373337333B0D0A7D0D0A2E742D54696D656C696E652D617661746172207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A2023666666';
wwv_flow_api.g_varchar2_table(1084) := '6666663B0D0A7D0D0A2E742D54696D656C696E652D77726170207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A612E742D54696D656C696E652D777261703A686F7665722C0D0A612E742D54696D656C696E652D777261703A666F637573';
wwv_flow_api.g_varchar2_table(1085) := '207B0D0A20206261636B67726F756E642D636F6C6F723A207267626128302C20302C20302C20302E3035293B0D0A2020626F782D736861646F773A20302038707820387078202D347078207267626128302C20302C20302C20302E3035292C2030203270';
wwv_flow_api.g_varchar2_table(1086) := '7820387078202D327078207267626128302C20302C20302C20302E31293B0D0A7D0D0A2E742D54696D656C696E652D74797065207B0D0A20206261636B67726F756E642D636F6C6F723A20236635663566353B0D0A2020636F6C6F723A20233236323632';
wwv_flow_api.g_varchar2_table(1087) := '363B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D6E6577207B0D0A20206261636B67726F756E642D636F6C6F723A20233342414132433B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D747970652E';
wwv_flow_api.g_varchar2_table(1088) := '69732D75706461746564207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664663B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D747970652E69732D72656D6F766564207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1089) := '67726F756E642D636F6C6F723A20236634343333363B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D54696D656C696E652D777261703A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A';
wwv_flow_api.g_varchar2_table(1090) := '20302030203020317078202332333730633220696E7365743B0D0A7D0D0A2E742D54696D656C696E65202B202E742D5265706F72742D706167696E6174696F6E207B0D0A2020626F726465722D746F702D636F6C6F723A207267626128302C20302C2030';
wwv_flow_api.g_varchar2_table(1091) := '2C20302E31293B0D0A7D0D0A406D6564696120286D696E2D77696474683A20373639707829207B0D0A20202E742D426F64792D6E6176207B0D0A202020206261636B67726F756E642D636F6C6F723A20236630663066303B0D0A20207D0D0A7D0D0A2E74';
wwv_flow_api.g_varchar2_table(1092) := '2D547265654E6176207B0D0A20206261636B67726F756E642D636F6C6F723A20236630663066303B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D746875';
wwv_flow_api.g_varchar2_table(1093) := '6D62207B0D0A20206261636B67726F756E642D636F6C6F723A20236432643264323B0D0A2020626F782D736861646F773A20696E7365742031707820302030203020236630663066303B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E617620';
wwv_flow_api.g_varchar2_table(1094) := '2E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D7468756D623A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236234623462343B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E617620';
wwv_flow_api.g_varchar2_table(1095) := '2E742D426F64792D6E61763A3A2D7765626B69742D7363726F6C6C6261722D747261636B207B0D0A20206261636B67726F756E643A20236630663066303B0D0A7D0D0A2E742D50616765426F64792D2D6C6566744E6176202E742D426F64792D6E61763A';
wwv_flow_api.g_varchar2_table(1096) := '3A2D7765626B69742D7363726F6C6C6261722D747261636B3A686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236361636163613B0D0A7D0D0A2E742D526567696F6E207B0D0A20200D0A7D0D0A2E742D526567696F6E202E612D';
wwv_flow_api.g_varchar2_table(1097) := '54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365743B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1098) := '67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0D0A2E742D';
wwv_flow_api.g_varchar2_table(1099) := '526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C';
wwv_flow_api.g_varchar2_table(1100) := '202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0D0A7D0D0A2E742D526567696F6E202E612D547265655669';
wwv_flow_api.g_varchar2_table(1101) := '65772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369';
wwv_flow_api.g_varchar2_table(1102) := '626C65203E202E612D54726565566965772D726F772C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1103) := '2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236630663066302021696D706F7274';
wwv_flow_api.g_varchar2_table(1104) := '616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D526567';
wwv_flow_api.g_varchar2_table(1105) := '696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A20726762612833382C2033382C2033382C20302E3735293B';
wwv_flow_api.g_varchar2_table(1106) := '0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0D0A2E742D52';
wwv_flow_api.g_varchar2_table(1107) := '6567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20233236323632362021696D706F7274';
wwv_flow_api.g_varchar2_table(1108) := '616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0D0A2020636F6C6F723A20233236323632362021696D706F';
wwv_flow_api.g_varchar2_table(1109) := '7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D52656769';
wwv_flow_api.g_varchar2_table(1110) := '6F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565';
wwv_flow_api.g_varchar2_table(1111) := '566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A20726762612833382C2033382C2033382C20302E3935293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E61';
wwv_flow_api.g_varchar2_table(1112) := '2D54726565566965772D636F6E74656E74202E66613A6265666F72652C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E3A6265666F';
wwv_flow_api.g_varchar2_table(1113) := '7265207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0D0A';
wwv_flow_api.g_varchar2_table(1114) := '2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0D0A2E742D526567696F6E202E612D5472656556696577';
wwv_flow_api.g_varchar2_table(1115) := '2D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D5472656556';
wwv_flow_api.g_varchar2_table(1116) := '6965772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E61';
wwv_flow_api.g_varchar2_table(1117) := '2D54726565566965772D6C6162656C207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E6973';
wwv_flow_api.g_varchar2_table(1118) := '2D63757272656E742C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D5472656556';
wwv_flow_api.g_varchar2_table(1119) := '6965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965';
wwv_flow_api.g_varchar2_table(1120) := '772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A20726762612833382C2033382C2033382C20302E3735293B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F';
wwv_flow_api.g_varchar2_table(1121) := '64652D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20233236323632362021696D706F7274616E743B0D0A7D0D0A2E742D526567696F6E202E612D54726565566965772D6E6F6465';
wwv_flow_api.g_varchar2_table(1122) := '2D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D526567696F6E202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F';
wwv_flow_api.g_varchar2_table(1123) := '6C6C61707369626C65203E202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A20206261636B67726F756E642D636F6C6F723A20236637663766373B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F';
wwv_flow_api.g_varchar2_table(1124) := '64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365743B0D0A20206261636B67726F756E642D636F6C6F';
wwv_flow_api.g_varchar2_table(1125) := '723A207472616E73706172656E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742C0D0A2E742D547265654E6176202E61';
wwv_flow_api.g_varchar2_table(1126) := '2D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565';
wwv_flow_api.g_varchar2_table(1127) := '566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20236432643264323B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F6465';
wwv_flow_api.g_varchar2_table(1128) := '2D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65203E20';
wwv_flow_api.g_varchar2_table(1129) := '2E612D54726565566965772D726F772C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A20236461646164613B0D0A7D0D0A2E742D5472';
wwv_flow_api.g_varchar2_table(1130) := '65654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236362636263622021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(1131) := '0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C652C0D0A2E742D547265654E61';
wwv_flow_api.g_varchar2_table(1132) := '76202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A207267626128302C20302C20302C20302E3735293B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1133) := '2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D686F766572202B202E612D54726565566965772D746F67676C653A686F7665722C0D0A2E742D547265654E';
wwv_flow_api.g_varchar2_table(1134) := '6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20233030303030302021696D706F7274616E74';
wwv_flow_api.g_varchar2_table(1135) := '3B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572207B0D0A2020636F6C6F723A20233030303030302021696D706F7274';
wwv_flow_api.g_varchar2_table(1136) := '616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20233630363036303B0D0A7D0D0A2E742D547265654E';
wwv_flow_api.g_varchar2_table(1137) := '6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265';
wwv_flow_api.g_varchar2_table(1138) := '65566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A20233630363036303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E';
wwv_flow_api.g_varchar2_table(1139) := '74656E74202E66613A6265666F72652C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E74202E612D49636F6E3A6265666F7265207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1140) := '723A20696E68657269743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E66612C0D0A2E742D547265654E617620';
wwv_flow_api.g_varchar2_table(1141) := '2E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F';
wwv_flow_api.g_varchar2_table(1142) := '704C6576656C202E612D54726565566965772D636F6E74656E742E69732D686F766572202E612D49636F6E2C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74';
wwv_flow_api.g_varchar2_table(1143) := '656E742E69732D63757272656E742D2D746F70202E612D49636F6E207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D547265655669';
wwv_flow_api.g_varchar2_table(1144) := '65772D6C6162656C207B0D0A2020636F6C6F723A20696E68657269743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D6375727265';
wwv_flow_api.g_varchar2_table(1145) := '6E742C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D73656C65637465642C0D0A2E742D547265654E6176202E612D54726565566965772D';
wwv_flow_api.g_varchar2_table(1146) := '6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E';
wwv_flow_api.g_varchar2_table(1147) := '6F64652D2D746F704C6576656C202E612D54726565566965772D746F67676C65207B0D0A2020636F6C6F723A20726762612839362C2039362C2039362C20302E3735293B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F6465';
wwv_flow_api.g_varchar2_table(1148) := '2D2D746F704C6576656C202E612D54726565566965772D746F67676C653A686F766572207B0D0A2020636F6C6F723A20233630363036302021696D706F7274616E743B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D';
wwv_flow_api.g_varchar2_table(1149) := '2D746F704C6576656C2E69732D636F6C6C61707369626C65202E612D54726565566965772D636F6E74656E74202E66612C0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F6C6C61707369';
wwv_flow_api.g_varchar2_table(1150) := '626C65202E612D54726565566965772D636F6E74656E74202E612D49636F6E207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6E6F64652D2D746F704C6576656C2E69732D636F';
wwv_flow_api.g_varchar2_table(1151) := '6C6C61707369626C65202E612D54726565566965772D636F6E74656E74207B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E6A732D6E6176436F6C6C6170736564202E742D547265654E6176202E612D54726565566965772D6E6F64652D';
wwv_flow_api.g_varchar2_table(1152) := '2D746F704C6576656C203E202E612D54726565566965772D636F6E74656E74202E612D54726565566965772D6C6162656C202E612D54726565566965772D6261646765207B0D0A20206261636B67726F756E643A20236361636163613B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1153) := '6F723A20233030303030303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D6261646765207B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E31293B0D0A2020666F6E74';
wwv_flow_api.g_varchar2_table(1154) := '2D7765696768743A203430303B0D0A7D0D0A2E742D547265654E6176202E612D54726565566965772D636F6E74656E742E69732D63757272656E74202E612D54726565566965772D6C6162656C2C0D0A2E742D547265654E6176202E612D547265655669';
wwv_flow_api.g_varchar2_table(1155) := '65772D636F6E74656E742E69732D63757272656E742D2D746F70202E612D54726565566965772D6C6162656C207B0D0A2020666F6E742D7765696768743A203530303B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D547265655669';
wwv_flow_api.g_varchar2_table(1156) := '65772D6E6F64652D2D746F704C6576656C207B0D0A2020626F726465722D626F74746F6D3A2031707820736F6C69642072676261283235352C203235352C203235352C20302E303735293B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E';
wwv_flow_api.g_varchar2_table(1157) := '612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F70';
wwv_flow_api.g_varchar2_table(1158) := '4C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F77207B0D0A2020626F782D736861646F773A20696E736574202364613162316220347078203020303B0D0A';
wwv_flow_api.g_varchar2_table(1159) := '7D0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E752D52544C202E742D';
wwv_flow_api.g_varchar2_table(1160) := '547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E612D54726565566965772D726F77207B0D0A20';
wwv_flow_api.g_varchar2_table(1161) := '20626F782D736861646F773A20696E7365742023646131623162202D347078203020303B0D0A7D0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D72';
wwv_flow_api.g_varchar2_table(1162) := '6F772E69732D63757272656E742D2D746F702E69732D666F63757365642C0D0A2E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D637572';
wwv_flow_api.g_varchar2_table(1163) := '72656E742D2D746F70207E20756C202E612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20696E736574202364613162316220347078203020302C20302030203020317078202364613162316220';
wwv_flow_api.g_varchar2_table(1164) := '696E7365743B0D0A7D0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D66';
wwv_flow_api.g_varchar2_table(1165) := '6F63757365642C0D0A2E752D52544C202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F70207E20756C202E';
wwv_flow_api.g_varchar2_table(1166) := '612D54726565566965772D726F772E69732D666F6375736564207B0D0A2020626F782D736861646F773A20696E7365742023646131623162202D347078203020302C20302030203020317078202364613162316220696E7365743B0D0A7D0D0A2E742D54';
wwv_flow_api.g_varchar2_table(1167) := '7265654E61762D2D7374796C6541202E612D54726565566965772D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E6A732D6E6176436F6C6C61';
wwv_flow_api.g_varchar2_table(1168) := '70736564202E742D547265654E61762D2D7374796C6541202E612D54726565566965772D6E6F64652D2D746F704C6576656C203E202E612D54726565566965772D636F6E74656E74202E612D54726565566965772D6C6162656C202E612D547265655669';
wwv_flow_api.g_varchar2_table(1169) := '65772D6261646765207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D547265654E61762D2D737479';
wwv_flow_api.g_varchar2_table(1170) := '6C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C20756C207B0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565';
wwv_flow_api.g_varchar2_table(1171) := '566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702C0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C20';
wwv_flow_api.g_varchar2_table(1172) := '2E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E';
wwv_flow_api.g_varchar2_table(1173) := '612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D2D746F702E69732D73656C6563746564202B202E612D54726565566965772D746F67676C652C0D0A2E742D54726565';
wwv_flow_api.g_varchar2_table(1174) := '4E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F70207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1175) := '2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D636F6E74656E742E69732D63757272656E742D2D746F702E69732D686F766572207B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1176) := '723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6E6F64652D2D746F704C6576656C202E612D54726565566965772D726F772E69732D63757272656E742D';
wwv_flow_api.g_varchar2_table(1177) := '2D746F702E69732D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236466316331632021696D706F7274616E743B0D0A7D0D0A2E742D547265654E61762D2D7374796C6542202E612D54726565566965772D6261646765207B0D';
wwv_flow_api.g_varchar2_table(1178) := '0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A2020626F782D736861646F773A206E6F6E653B0D0A7D0D0A2E742D56616C69646174696F6E2D64617465207B0D0A2020636F';
wwv_flow_api.g_varchar2_table(1179) := '6C6F723A20233236323632363B0D0A7D0D0A2E742D56616C69646174696F6E2D75736572207B0D0A2020636F6C6F723A20233430343034303B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D56616C69646174696F6E2D64617465207B0D0A';
wwv_flow_api.g_varchar2_table(1180) := '2020636F6C6F723A20233230323032303B0D0A7D0D0A2E742D426F64792D616374696F6E73202E742D56616C69646174696F6E2D75736572207B0D0A2020636F6C6F723A20233361336133613B0D0A7D0D0A2E742D4469616C6F672D706167652D2D7769';
wwv_flow_api.g_varchar2_table(1181) := '7A617264207B0D0A2020626F726465723A20236536653665363B0D0A7D0D0A2E742D57697A617264207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465722D7261646975733A203270783B0D0A202062';
wwv_flow_api.g_varchar2_table(1182) := '6F726465722D636F6C6F723A20236536653665363B0D0A2020626F782D736861646F773A20302031707820327078207267626128302C20302C20302C20302E3035293B0D0A7D0D0A2E742D57697A617264202E742D57697A6172642D7469746C65207B0D';
wwv_flow_api.g_varchar2_table(1183) := '0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D57697A617264202E742D57697A6172642D686561646572207B0D0A20206261636B67726F756E642D636F6C6F723A20236661666166613B0D0A2020626F726465722D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1184) := '6564656465643B0D0A7D0D0A2E742D57697A61726453746570732D777261703A6166746572207B0D0A20206261636B67726F756E642D636F6C6F723A20236536653665363B0D0A7D0D0A2E742D57697A61726453746570732D73746570202E742D57697A';
wwv_flow_api.g_varchar2_table(1185) := '61726453746570732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236363636363633B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D636F6D706C657465202E742D57697A61726453746570732D6D';
wwv_flow_api.g_varchar2_table(1186) := '61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20233342414132433B0D0A2020636F6C6F723A20234646463B0D0A7D0D0A2E742D57697A61726453746570732D737465702E69732D616374697665202E742D57697A617264537465';
wwv_flow_api.g_varchar2_table(1187) := '70732D6D61726B6572207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231623B0D0A7D0D0A2E742D57697A61726453746570732D6C6162656C207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A612E742D57697A61';
wwv_flow_api.g_varchar2_table(1188) := '726453746570732D777261705B687265665D3A686F766572202E742D57697A61726453746570732D6C6162656C2C0D0A612E742D57697A61726453746570732D777261705B687265665D3A666F637573202E742D57697A61726453746570732D6C616265';
wwv_flow_api.g_varchar2_table(1189) := '6C207B0D0A2020636F6C6F723A20233233373063323B0D0A2020746578742D6465636F726174696F6E3A20756E6465726C696E653B0D0A7D0D0A612E742D57697A61726453746570732D777261705B687265665D3A666F637573202E742D57697A617264';
wwv_flow_api.g_varchar2_table(1190) := '53746570732D6D61726B6572207B0D0A2020626F782D736861646F773A2030203020302031707820236666666666662C2030203020302032707820233233373063322C20302030203170782032707820726762612833352C203131322C203139342C2030';
wwv_flow_api.g_varchar2_table(1191) := '2E3235293B0D0A7D0D0A626F6479202E75692D7769646765742D6F7665726C6179207B0D0A20206261636B67726F756E643A206E6F6E65207267626128302C20302C20302C20302E3235293B0D0A20206F7061636974793A20313B0D0A7D0D0A2E75692D';
wwv_flow_api.g_varchar2_table(1192) := '776964676574207B0D0A2020666F6E742D66616D696C793A202748656C766574696361204E657565272C20275365676F65205549272C2048656C7665746963612C20417269616C2C2073616E732D73657269663B0D0A2020666F6E742D73697A653A2031';
wwv_flow_api.g_varchar2_table(1193) := '3270783B0D0A7D0D0A2E75692D776964676574202E75692D776964676574207B0D0A2020666F6E742D73697A653A20313270783B0D0A7D0D0A626F6479202E75692D7769646765742D636F6E74656E74207B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1194) := '236562656265623B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A626F6479202E75692D7769646765742D636F6E74656E742061207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1195) := '233233373063323B0D0A7D0D0A626F6479202E75692D7769646765742D686561646572207B0D0A2020626F726465722D636F6C6F723A20236562656265623B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1196) := '6F723A20233236323632363B0D0A7D0D0A626F6479202E75692D7769646765742D6865616465722061207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A626F6479202E75692D73746174652D64656661756C742C0D0A626F6479202E7569';
wwv_flow_api.g_varchar2_table(1197) := '2D7769646765742D636F6E74656E74202E75692D73746174652D64656661756C742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D64656661756C74207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1198) := '236638663866383B0D0A2020636F6C6F723A20233338333833383B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E303132352920696E7365743B0D0A7D0D0A626F6479202E75692D7374617465';
wwv_flow_api.g_varchar2_table(1199) := '2D64656661756C7420612C0D0A626F6479202E75692D73746174652D64656661756C7420613A6C696E6B2C0D0A626F6479202E75692D73746174652D64656661756C7420613A766973697465642C0D0A626F6479202E75692D73746174652D6163746976';
wwv_flow_api.g_varchar2_table(1200) := '6520612C0D0A626F6479202E75692D73746174652D61637469766520613A6C696E6B2C0D0A626F6479202E75692D73746174652D61637469766520613A76697369746564207B0D0A2020636F6C6F723A20233233373063323B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1201) := '75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D616374697665';
wwv_flow_api.g_varchar2_table(1202) := '207B0D0A2020626F782D736861646F773A20302030203020317078207267626128302C20302C20302C20302E322920696E7365742C20302031707820327078207267626128302C20302C20302C20302E32352920696E7365743B0D0A7D0D0A626F647920';
wwv_flow_api.g_varchar2_table(1203) := '2E75692D73746174652D686F7665722C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686F7665722C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686F766572207B';
wwv_flow_api.g_varchar2_table(1204) := '0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233338333833383B0D0A2020626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E3035292C2030203020';
wwv_flow_api.g_varchar2_table(1205) := '3020317078207267626128302C20302C20302C20302E303132352920696E7365743B0D0A7D0D0A626F6479202E75692D73746174652D666F6375732C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D666F6375';
wwv_flow_api.g_varchar2_table(1206) := '732C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D666F637573207B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365742C20302030203170782032707820726762';
wwv_flow_api.g_varchar2_table(1207) := '612833352C203131322C203139342C20302E3235292021696D706F7274616E743B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233338333833383B0D0A7D0D0A626F6479202E75692D64617465';
wwv_flow_api.g_varchar2_table(1208) := '7069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E3A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A2030203020302031707820233233373063322069';
wwv_flow_api.g_varchar2_table(1209) := '6E7365742C20302030203170782032707820726762612833352C203131322C203139342C20302E3235292021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D73746174652D686F76657220612C0D0A626F6479202E75692D73746174652D68';
wwv_flow_api.g_varchar2_table(1210) := '6F76657220613A686F7665722C0D0A626F6479202E75692D73746174652D686F76657220613A6C696E6B2C0D0A626F6479202E75692D73746174652D686F76657220613A766973697465642C0D0A626F6479202E75692D73746174652D666F6375732061';
wwv_flow_api.g_varchar2_table(1211) := '2C0D0A626F6479202E75692D73746174652D666F63757320613A686F7665722C0D0A626F6479202E75692D73746174652D666F63757320613A6C696E6B2C0D0A626F6479202E75692D73746174652D666F63757320613A76697369746564207B0D0A2020';
wwv_flow_api.g_varchar2_table(1212) := '636F6C6F723A20233233373063323B0D0A7D0D0A626F6479202E75692D73746174652D6163746976652C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6163746976652C0D0A626F6479202E75692D77696467';
wwv_flow_api.g_varchar2_table(1213) := '65742D686561646572202E75692D73746174652D616374697665207B0D0A20206261636B67726F756E642D636F6C6F723A20236465646564653B0D0A2020636F6C6F723A20233338333833383B0D0A7D0D0A626F6479202E75692D73746174652D686967';
wwv_flow_api.g_varchar2_table(1214) := '686C696768742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D686967686C696768742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C69676874207B0D';
wwv_flow_api.g_varchar2_table(1215) := '0A20206261636B67726F756E642D636F6C6F723A20236665663666363B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A626F6479202E75692D73746174652D686967686C6967687420612C0D0A626F6479202E75692D7769646765742D636F';
wwv_flow_api.g_varchar2_table(1216) := '6E74656E74202E75692D73746174652D686967686C6967687420612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D686967686C696768742061207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1217) := '626F6479202E75692D73746174652D6572726F722C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572';
wwv_flow_api.g_varchar2_table(1218) := '726F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E75692D73746174652D6572726F7220612C0D0A626F6479202E75692D7769646765742D';
wwv_flow_api.g_varchar2_table(1219) := '636F6E74656E74202E75692D73746174652D6572726F7220612C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174652D6572726F722061207B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1220) := '75692D73746174652D6572726F722D746578742C0D0A626F6479202E75692D7769646765742D636F6E74656E74202E75692D73746174652D6572726F722D746578742C0D0A626F6479202E75692D7769646765742D686561646572202E75692D73746174';
wwv_flow_api.g_varchar2_table(1221) := '652D6572726F722D74657874207B0D0A2020636F6C6F723A20236634343333363B0D0A7D0D0A626F6479202E75692D646174657069636B6572207B0D0A2020626F782D736861646F773A20302032707820367078207267626128302C20302C20302C2030';
wwv_flow_api.g_varchar2_table(1222) := '2E3035293B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C74207B';
wwv_flow_api.g_varchar2_table(1223) := '0D0A20206261636B67726F756E642D636F6C6F723A207472616E73706172656E743B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D6465666175';
wwv_flow_api.g_varchar2_table(1224) := '6C742E75692D73746174652D6163746976652C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D616374697665207B0D0A20206261636B67726F756E642D636F6C6F72';
wwv_flow_api.g_varchar2_table(1225) := '3A20236461316231623B0D0A2020636F6C6F723A20236666666666663B0D0A2020666F6E742D7765696768743A20626F6C643B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C74';
wwv_flow_api.g_varchar2_table(1226) := '2E75692D73746174652D6163746976652E75692D73746174652D686F7665722C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D6163746976652E75692D7374617465';
wwv_flow_api.g_varchar2_table(1227) := '2D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231622021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75';
wwv_flow_api.g_varchar2_table(1228) := '692D73746174652D686F7665722C0D0A626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686F766572207B0D0A20206261636B67726F756E642D636F6C6F723A2023663266';
wwv_flow_api.g_varchar2_table(1229) := '3266322021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C743A666F6375732C0D0A626F6479202E75692D646174657069636B657220746420612E7569';
wwv_flow_api.g_varchar2_table(1230) := '2D73746174652D64656661756C743A666F637573207B0D0A20206F75746C696E653A206E6F6E653B0D0A2020626F782D736861646F773A20302030203020317078202332333730633220696E7365742C2030203020317078203270782072676261283335';
wwv_flow_api.g_varchar2_table(1231) := '2C203131322C203139342C20302E3235292021696D706F7274616E743B0D0A7D0D0A626F6479202E75692D646174657069636B6572207464207370616E2E75692D73746174652D64656661756C742E75692D73746174652D686967686C696768742C0D0A';
wwv_flow_api.g_varchar2_table(1232) := '626F6479202E75692D646174657069636B657220746420612E75692D73746174652D64656661756C742E75692D73746174652D686967686C69676874207B0D0A20206261636B67726F756E642D636F6C6F723A20236562656265623B0D0A7D0D0A626F64';
wwv_flow_api.g_varchar2_table(1233) := '79202E75692D646174657069636B6572207468207B0D0A2020636F6C6F723A20233636363636363B0D0A2020626F726465722D626F74746F6D2D636F6C6F723A207267626128302C20302C20302C20302E31293B0D0A7D0D0A626F6479202E75692D6461';
wwv_flow_api.g_varchar2_table(1234) := '74657069636B6572202E75692D646174657069636B65722D6865616465722C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D627574746F6E70616E6520627574746F6E2C0D0A626F6479202E75692D646174';
wwv_flow_api.g_varchar2_table(1235) := '657069636B6572202E75692D646174657069636B65722D6E6578742C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D70726576207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A62';
wwv_flow_api.g_varchar2_table(1236) := '6F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D707265763A6163746976652C0D0A626F6479202E75692D646174657069636B6572202E75692D646174657069636B65722D6E6578743A616374697665207B0D0A2020';
wwv_flow_api.g_varchar2_table(1237) := '626F782D736861646F773A20302032707820317078207267626128302C20302C20302C20302E30352920696E7365742C20302030203020317078207267626128302C20302C20302C20302E303132352920696E7365743B0D0A7D0D0A2E75692D6469616C';
wwv_flow_api.g_varchar2_table(1238) := '6F67207B0D0A2020626F782D736861646F773A2030203470782031367078202D347078207267626128302C20302C20302C20302E32292C20302038707820323470782030207267626128302C20302C20302C20302E3135292C2030203020302031707820';
wwv_flow_api.g_varchar2_table(1239) := '7267626128302C20302C20302C20302E32293B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65626172207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020626F726465';
wwv_flow_api.g_varchar2_table(1240) := '722D626F74746F6D3A2031707820736F6C6964207267626128302C20302C20302C20302E3035293B0D0A7D0D0A626F6479202E75692D6469616C6F672E742D4469616C6F672D706167652D2D77697A617264202E75692D6469616C6F672D7469746C6562';
wwv_flow_api.g_varchar2_table(1241) := '6172207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A626F64';
wwv_flow_api.g_varchar2_table(1242) := '79202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E742C0D0A2E742D4469616C6F672D70616765207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233236323632363B0D';
wwv_flow_api.g_varchar2_table(1243) := '0A7D0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F672C0D0A2E742D4469616C6F672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722C0D0A2E742D4469616C6F672D2D77697A6172';
wwv_flow_api.g_varchar2_table(1244) := '6420626F6479202E75692D6469616C6F67202E75692D6469616C6F672D636F6E74656E74207B0D0A20206261636B67726F756E642D636F6C6F723A20236666666666663B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A2E742D4469616C6F';
wwv_flow_api.g_varchar2_table(1245) := '672D2D77697A6172642E75692D6469616C6F67202E75692D6469616C6F672D7469746C65207B0D0A2020636F6C6F723A20233236323632363B0D0A7D0D0A626F6479202E75692D636F726E65722D616C6C207B0D0A2020626F726465722D726164697573';
wwv_flow_api.g_varchar2_table(1246) := '3A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D746F702C0D0A626F6479202E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D636F726E65722D746C207B0D0A2020626F726465722D746F702D6C6566742D72616469';
wwv_flow_api.g_varchar2_table(1247) := '75733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D746F702C0D0A626F6479202E75692D636F726E65722D72696768742C0D0A626F6479202E75692D636F726E65722D7472207B0D0A2020626F726465722D746F702D72696768742D';
wwv_flow_api.g_varchar2_table(1248) := '7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D636F726E65722D626C207B0D0A2020626F726465722D626F7474';
wwv_flow_api.g_varchar2_table(1249) := '6F6D2D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D636F726E65722D72696768742C0D0A626F6479202E75692D636F726E65722D6272207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1250) := '726465722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D616C6C207B0D0A2020626F726465722D7261646975733A203270783B0D0A7D0D0A626F6479202E';
wwv_flow_api.g_varchar2_table(1251) := '75692D627574746F6E2E75692D636F726E65722D746F702C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746C207B0D0A2020626F726465722D';
wwv_flow_api.g_varchar2_table(1252) := '746F702D6C6566742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D746F702C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0D0A626F6479202E7569';
wwv_flow_api.g_varchar2_table(1253) := '2D627574746F6E2E75692D636F726E65722D7472207B0D0A2020626F726465722D746F702D72696768742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0D0A626F647920';
wwv_flow_api.g_varchar2_table(1254) := '2E75692D627574746F6E2E75692D636F726E65722D6C6566742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D626C207B0D0A2020626F726465722D626F74746F6D2D6C6566742D7261646975733A203270783B0D0A7D0D0A626F';
wwv_flow_api.g_varchar2_table(1255) := '6479202E75692D627574746F6E2E75692D636F726E65722D626F74746F6D2C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D72696768742C0D0A626F6479202E75692D627574746F6E2E75692D636F726E65722D6272207B0D0A20';
wwv_flow_api.g_varchar2_table(1256) := '20626F726465722D626F74746F6D2D72696768742D7261646975733A203270783B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D7469746C656261722D636C6F7365207B0D0A2020626F726465722D7261646975733A20';
wwv_flow_api.g_varchar2_table(1257) := '313030253B0D0A7D0D0A626F6479202E75692D6469616C6F67202E75692D6469616C6F672D627574746F6E70616E65207B0D0A2020626F726465722D746F702D636F6C6F723A20236562656265623B0D0A7D0D0A2E752D7761726E696E67207B0D0A2020';
wwv_flow_api.g_varchar2_table(1258) := '6261636B67726F756E642D636F6C6F723A20234642434534412021696D706F7274616E743B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E752D7761726E696E672D74657874207B0D0A2020636F6C6F723A20234642434534412021696D';
wwv_flow_api.g_varchar2_table(1259) := '706F7274616E743B0D0A7D0D0A2E752D7761726E696E672D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534412021696D706F7274616E743B0D0A7D0D0A2E752D7761726E696E672D626F72646572207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(1260) := '6465722D636F6C6F723A20234642434534412021696D706F7274616E743B0D0A7D0D0A2E752D73756363657373207B0D0A20206261636B67726F756E642D636F6C6F723A20233342414132432021696D706F7274616E743B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1261) := '4646463B0D0A7D0D0A2E752D737563636573732D74657874207B0D0A2020636F6C6F723A20233342414132432021696D706F7274616E743B0D0A7D0D0A2E752D737563636573732D6267207B0D0A20206261636B67726F756E642D636F6C6F723A202333';
wwv_flow_api.g_varchar2_table(1262) := '42414132432021696D706F7274616E743B0D0A7D0D0A2E752D737563636573732D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233342414132432021696D706F7274616E743B0D0A7D0D0A2E752D64616E676572207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1263) := '636B67726F756E642D636F6C6F723A20236634343333362021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D64616E6765722D74657874207B0D0A2020636F6C6F723A20236634343333362021696D706F72';
wwv_flow_api.g_varchar2_table(1264) := '74616E743B0D0A7D0D0A2E752D64616E6765722D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20236634343333362021696D706F7274616E743B0D0A7D0D0A2E752D64616E6765722D626F72646572207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1265) := '6F6C6F723A20236634343333362021696D706F7274616E743B0D0A7D0D0A2E752D696E666F207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664662021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D';
wwv_flow_api.g_varchar2_table(1266) := '0A7D0D0A2E752D696E666F2D74657874207B0D0A2020636F6C6F723A20233030373664662021696D706F7274616E743B0D0A7D0D0A2E752D696E666F2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233030373664662021696D706F';
wwv_flow_api.g_varchar2_table(1267) := '7274616E743B0D0A7D0D0A2E752D696E666F2D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233030373664662021696D706F7274616E743B0D0A7D0D0A2E752D686F74207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1268) := '6461316231622021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D686F742D74657874207B0D0A2020636F6C6F723A20236461316231622021696D706F7274616E743B0D0A7D0D0A2E752D686F742D626720';
wwv_flow_api.g_varchar2_table(1269) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236461316231622021696D706F7274616E743B0D0A7D0D0A2E752D686F742D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236461316231622021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1270) := '0A7D0D0A2E752D6E6F726D616C207B0D0A20206261636B67726F756E642D636F6C6F723A20234644464446442021696D706F7274616E743B0D0A2020636F6C6F723A20233234323432343B0D0A7D0D0A2E752D6E6F726D616C2D74657874207B0D0A2020';
wwv_flow_api.g_varchar2_table(1271) := '636F6C6F723A20233234323432342021696D706F7274616E743B0D0A7D0D0A2E752D6E6F726D616C2D6267207B0D0A20206261636B67726F756E642D636F6C6F723A20233234323432342021696D706F7274616E743B0D0A7D0D0A2E752D6E6F726D616C';
wwv_flow_api.g_varchar2_table(1272) := '2D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233234323432342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F72207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1273) := '6B67726F756E642D636F6C6F723A20236464313830613B0D0A202066696C6C3A20236464313830613B0D0A2020636F6C6F723A20236665653965383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D';
wwv_flow_api.g_varchar2_table(1274) := '636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236464313830613B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1275) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D74657874207B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1276) := '6F723A20236464313830613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203129202E752D636F';
wwv_flow_api.g_varchar2_table(1277) := '6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236464313830613B0D0A20207374726F6B653A20236464313830613B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F';
wwv_flow_api.g_varchar2_table(1278) := '6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233133423643463B0D0A202066696C6C3A20233133423643463B0D0A2020636F6C6F723A20236534663966643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1279) := '34356E202B203229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A202331';
wwv_flow_api.g_varchar2_table(1280) := '33423643463B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D74';
wwv_flow_api.g_varchar2_table(1281) := '657874207B0D0A2020636F6C6F723A20233133423643463B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1282) := '6E202B203229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233133423643463B0D0A20207374726F6B653A20233133423643463B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1283) := '6E202B203329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233245424642433B0D0A202066696C6C3A20233245424642433B0D0A2020636F6C6F723A20236630666366623B0D0A7D0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1284) := '203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1285) := '6E642D636F6C6F723A20233245424642433B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2033';
wwv_flow_api.g_varchar2_table(1286) := '29202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233245424642433B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1287) := '6E74682D6368696C642834356E202B203329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233245424642433B0D0A20207374726F6B653A20233245424642433B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1288) := '6E74682D6368696C642834356E202B203429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233343414638353B0D0A202066696C6C3A20233343414638353B0D0A2020636F6C6F723A20236630666166363B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1289) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D6261636B67726F756E64207B';
wwv_flow_api.g_varchar2_table(1290) := '0D0A20206261636B67726F756E642D636F6C6F723A20233343414638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1291) := '68696C642834356E202B203429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233343414638353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D62642C0D0A2E';
wwv_flow_api.g_varchar2_table(1292) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233343414638353B0D0A20207374726F6B653A20233343414638353B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1293) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233831424235463B0D0A202066696C6C3A20233831424235463B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1294) := '236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1295) := '6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233831424235463B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D7478742C0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1296) := '6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233831424235463B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D';
wwv_flow_api.g_varchar2_table(1297) := '636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233831424235463B0D0A20207374726F6B653A202338';
wwv_flow_api.g_varchar2_table(1298) := '31424235463B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20234444444535333B0D0A202066696C6C3A2023444444453533';
wwv_flow_api.g_varchar2_table(1299) := '3B0D0A2020636F6C6F723A20233261326130383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1300) := '3629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234444444535333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1301) := '7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20234444444535333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1302) := '34356E202B203629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234444444535333B0D0A';
wwv_flow_api.g_varchar2_table(1303) := '20207374726F6B653A20234444444535333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A202066';
wwv_flow_api.g_varchar2_table(1304) := '696C6C3A20234642434534413B0D0A2020636F6C6F723A20233434333330323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_api.g_varchar2_table(1305) := '6368696C642834356E202B203729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534413B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1306) := '3729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20234642434534413B0D0A7D0D0A2E752D636F6C6F7273203E';
wwv_flow_api.g_varchar2_table(1307) := '203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(1308) := '3A20234642434534413B0D0A20207374726F6B653A20234642434534413B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1309) := '4544383133453B0D0A202066696C6C3A20234544383133453B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D62672C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1310) := '6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234544383133453B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_api.g_varchar2_table(1311) := '6368696C642834356E202B203829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20234544383133453B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1312) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203829202E752D636F6C6F722D626F72646572207B0D0A2020';
wwv_flow_api.g_varchar2_table(1313) := '626F726465722D636F6C6F723A20234544383133453B0D0A20207374726F6B653A20234544383133453B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F72207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1314) := '756E642D636F6C6F723A20234539354235343B0D0A202066696C6C3A20234539354235343B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1315) := '722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234539354235343B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1316) := '6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1317) := '234539354235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203929202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1318) := '626F72646572207B0D0A2020626F726465722D636F6C6F723A20234539354235343B0D0A20207374726F6B653A20234539354235343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1319) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20234538354438383B0D0A202066696C6C3A20234538354438383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E';
wwv_flow_api.g_varchar2_table(1320) := '202B20313029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234538';
wwv_flow_api.g_varchar2_table(1321) := '354438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1322) := '74657874207B0D0A2020636F6C6F723A20234538354438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1323) := '34356E202B20313029202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234538354438383B0D0A20207374726F6B653A20234538354438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1324) := '2834356E202B20313129202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20234341353839443B0D0A202066696C6C3A20234341353839443B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1325) := '7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1326) := '636B67726F756E642D636F6C6F723A20234341353839443B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1327) := '34356E202B20313129202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20234341353839443B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D62642C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1328) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20313129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234341353839443B0D0A20207374726F6B653A20234341353839443B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1329) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233835344539423B0D0A202066696C6C3A20233835344539423B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1330) := '6636663066383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1331) := '2D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233835344539423B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D7478742C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1332) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233835344539423B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229';
wwv_flow_api.g_varchar2_table(1333) := '202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233835344539423B0D0A20207374726F6B';
wwv_flow_api.g_varchar2_table(1334) := '653A20233835344539423B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233541363841443B0D0A202066696C6C3A2023';
wwv_flow_api.g_varchar2_table(1335) := '3541363841443B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1336) := '2834356E202B20313329202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233541363841443B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2031332920';
wwv_flow_api.g_varchar2_table(1337) := '2E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233541363841443B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1338) := '6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(1339) := '3A20233541363841443B0D0A20207374726F6B653A20233541363841443B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1340) := '234146424143353B0D0A202066696C6C3A20234146424143353B0D0A2020636F6C6F723A20233331336134343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D62672C0D0A2E752D';
wwv_flow_api.g_varchar2_table(1341) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234146424143353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1342) := '74682D6368696C642834356E202B20313429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A2023414642414335';
wwv_flow_api.g_varchar2_table(1343) := '3B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313429202E752D636F6C6F722D626F726465';
wwv_flow_api.g_varchar2_table(1344) := '72207B0D0A2020626F726465722D636F6C6F723A20234146424143353B0D0A20207374726F6B653A20234146424143353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F72207B0D0A20';
wwv_flow_api.g_varchar2_table(1345) := '206261636B67726F756E642D636F6C6F723A20233645383539383B0D0A202066696C6C3A20233645383539383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B203135';
wwv_flow_api.g_varchar2_table(1346) := '29202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233645383539383B';
wwv_flow_api.g_varchar2_table(1347) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D7465787420';
wwv_flow_api.g_varchar2_table(1348) := '7B0D0A2020636F6C6F723A20233645383539383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1349) := '20313529202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233645383539383B0D0A20207374726F6B653A20233645383539383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1350) := '2B20313629202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236534343633623B0D0A202066696C6C3A20236534343633623B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E20';
wwv_flow_api.g_varchar2_table(1351) := '3A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1352) := '756E642D636F6C6F723A20236534343633623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1353) := '20313629202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236534343633623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1354) := '203E203A6E74682D6368696C642834356E202B20313629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236534343633623B0D0A20207374726F6B653A20236534343633623B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1355) := '73203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A202066696C6C3A20233432633564393B0D0A2020636F6C6F723A20233035313531';
wwv_flow_api.g_varchar2_table(1356) := '373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D6261636B';
wwv_flow_api.g_varchar2_table(1357) := '67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1358) := '203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233432633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D63';
wwv_flow_api.g_varchar2_table(1359) := '6F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233432633564393B0D0A20207374726F6B653A202334';
wwv_flow_api.g_varchar2_table(1360) := '32633564393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A202066696C6C3A20233538636363';
wwv_flow_api.g_varchar2_table(1361) := '393B0D0A2020636F6C6F723A20233039316331633B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1362) := '2B20313829202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F';
wwv_flow_api.g_varchar2_table(1363) := '6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1364) := '68696C642834356E202B20313829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233538';
wwv_flow_api.g_varchar2_table(1365) := '636363393B0D0A20207374726F6B653A20233538636363393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A202336336266';
wwv_flow_api.g_varchar2_table(1366) := '39643B0D0A202066696C6C3A20233633626639643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1367) := '73203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1368) := '696C642834356E202B20313929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233633626639643B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1369) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20313929202E752D636F6C6F722D626F72646572207B0D0A';
wwv_flow_api.g_varchar2_table(1370) := '2020626F726465722D636F6C6F723A20233633626639643B0D0A20207374726F6B653A20233633626639643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F72207B0D0A20206261636B';
wwv_flow_api.g_varchar2_table(1371) := '67726F756E642D636F6C6F723A20233961633937663B0D0A202066696C6C3A20233961633937663B0D0A2020636F6C6F723A20233230333331363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D';
wwv_flow_api.g_varchar2_table(1372) := '636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937663B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1373) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D74657874207B0D0A2020';
wwv_flow_api.g_varchar2_table(1374) := '636F6C6F723A20233961633937663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2032302920';
wwv_flow_api.g_varchar2_table(1375) := '2E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233961633937663B0D0A20207374726F6B653A20233961633937663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129';
wwv_flow_api.g_varchar2_table(1376) := '202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537353B0D0A202066696C6C3A20236534653537353B0D0A2020636F6C6F723A20233463346330663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D';
wwv_flow_api.g_varchar2_table(1377) := '6368696C642834356E202B20323129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1378) := '6F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2032312920';
wwv_flow_api.g_varchar2_table(1379) := '2E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1380) := '74682D6368696C642834356E202B20323129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236534653537353B0D0A20207374726F6B653A20236534653537353B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1381) := '6E74682D6368696C642834356E202B20323229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A202066696C6C3A20236663643836653B0D0A2020636F6C6F723A20233639346630323B0D0A7D';
wwv_flow_api.g_varchar2_table(1382) := '0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D6261636B67726F756E';
wwv_flow_api.g_varchar2_table(1383) := '64207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1384) := '74682D6368696C642834356E202B20323229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236663643836653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1385) := '62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236663643836653B0D0A20207374726F6B653A2023666364383665';
wwv_flow_api.g_varchar2_table(1386) := '3B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A202066696C6C3A20236631396136353B0D0A20';
wwv_flow_api.g_varchar2_table(1387) := '20636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329';
wwv_flow_api.g_varchar2_table(1388) := '202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D74';
wwv_flow_api.g_varchar2_table(1389) := '78742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1390) := '34356E202B20323329202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236631396136353B';
wwv_flow_api.g_varchar2_table(1391) := '0D0A20207374726F6B653A20236631396136353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A';
wwv_flow_api.g_varchar2_table(1392) := '202066696C6C3A20236564376337363B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1393) := '6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1394) := '356E202B20323429202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236564376337363B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1395) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323429202E752D636F6C6F722D626F72646572207B0D0A2020626F72';
wwv_flow_api.g_varchar2_table(1396) := '6465722D636F6C6F723A20236564376337363B0D0A20207374726F6B653A20236564376337363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F72207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1397) := '642D636F6C6F723A20236564376461303B0D0A202066696C6C3A20236564376461303B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1398) := '2D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461303B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1399) := '6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F72';
wwv_flow_api.g_varchar2_table(1400) := '3A20236564376461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323529202E752D636F';
wwv_flow_api.g_varchar2_table(1401) := '6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376461303B0D0A20207374726F6B653A20236564376461303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D63';
wwv_flow_api.g_varchar2_table(1402) := '6F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962313B0D0A202066696C6C3A20236435373962313B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64';
wwv_flow_api.g_varchar2_table(1403) := '2834356E202B20323629202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1404) := '20236435373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F';
wwv_flow_api.g_varchar2_table(1405) := '6C6F722D74657874207B0D0A2020636F6C6F723A20236435373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1406) := '696C642834356E202B20323629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236435373962313B0D0A20207374726F6B653A20236435373962313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1407) := '68696C642834356E202B20323729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A202066696C6C3A20233964373161663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D';
wwv_flow_api.g_varchar2_table(1408) := '636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D6261636B67726F756E64207B0D0A';
wwv_flow_api.g_varchar2_table(1409) := '20206261636B67726F756E642D636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1410) := '696C642834356E202B20323729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233964373161663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D62642C0D0A';
wwv_flow_api.g_varchar2_table(1411) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233964373161663B0D0A20207374726F6B653A20233964373161663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1412) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A202066696C6C3A20233762383662643B0D0A2020636F6C6F';
wwv_flow_api.g_varchar2_table(1413) := '723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D63';
wwv_flow_api.g_varchar2_table(1414) := '6F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D7478742C0D0A';
wwv_flow_api.g_varchar2_table(1415) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1416) := '20323829202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233762383662643B0D0A202073';
wwv_flow_api.g_varchar2_table(1417) := '74726F6B653A20233762383662643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A202066696C';
wwv_flow_api.g_varchar2_table(1418) := '6C3A20236266633864313B0D0A2020636F6C6F723A20233364343835343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1419) := '68696C642834356E202B20323929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1420) := '323929202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1421) := '203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20323929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D63';
wwv_flow_api.g_varchar2_table(1422) := '6F6C6F723A20236266633864313B0D0A20207374726F6B653A20236266633864313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C';
wwv_flow_api.g_varchar2_table(1423) := '6F723A20233862396461643B0D0A202066696C6C3A20233862396461643B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D62672C0D';
wwv_flow_api.g_varchar2_table(1424) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461643B0D0A7D0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1425) := '3E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233862';
wwv_flow_api.g_varchar2_table(1426) := '396461643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333029202E752D636F6C6F722D62';
wwv_flow_api.g_varchar2_table(1427) := '6F72646572207B0D0A2020626F726465722D636F6C6F723A20233862396461643B0D0A20207374726F6B653A20233862396461643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F7220';
wwv_flow_api.g_varchar2_table(1428) := '7B0D0A20206261636B67726F756E642D636F6C6F723A20236334306430303B0D0A202066696C6C3A20236334306430303B0D0A2020636F6C6F723A20236666653965373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E20';
wwv_flow_api.g_varchar2_table(1429) := '2B20333129202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023633430';
wwv_flow_api.g_varchar2_table(1430) := '6430303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D74';
wwv_flow_api.g_varchar2_table(1431) := '657874207B0D0A2020636F6C6F723A20236334306430303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1432) := '356E202B20333129202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236334306430303B0D0A20207374726F6B653A20236334306430303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1433) := '34356E202B20333229202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233032613562653B0D0A202066696C6C3A20233032613562653B0D0A2020636F6C6F723A20233030303030303B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1434) := '73203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D6261636B67726F756E64207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1435) := '6B67726F756E642D636F6C6F723A20233032613562653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1436) := '356E202B20333229202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233032613562653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D62642C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1437) := '6C6F7273203E203A6E74682D6368696C642834356E202B20333229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233032613562653B0D0A20207374726F6B653A20233032613562653B0D0A7D0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1438) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233138623161653B0D0A202066696C6C3A20233138623161653B0D0A2020636F6C6F723A202330';
wwv_flow_api.g_varchar2_table(1439) := '30303030303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1440) := '6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233138623161653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D7478742C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1441) := '6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233138623161653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2033332920';
wwv_flow_api.g_varchar2_table(1442) := '2E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233138623161653B0D0A20207374726F6B65';
wwv_flow_api.g_varchar2_table(1443) := '3A20233138623161653B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233234613437353B0D0A202066696C6C3A202332';
wwv_flow_api.g_varchar2_table(1444) := '34613437353B0D0A2020636F6C6F723A20236566666266373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C6428';
wwv_flow_api.g_varchar2_table(1445) := '34356E202B20333429202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233234613437353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E';
wwv_flow_api.g_varchar2_table(1446) := '752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233234613437353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1447) := '74682D6368696C642834356E202B20333429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1448) := '20233234613437353B0D0A20207374726F6B653A20233234613437353B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1449) := '3661616434323B0D0A202066696C6C3A20233661616434323B0D0A2020636F6C6F723A20233063313530363B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D62672C0D0A2E752D63';
wwv_flow_api.g_varchar2_table(1450) := '6F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233661616434323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1451) := '682D6368696C642834356E202B20333529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233661616434323B';
wwv_flow_api.g_varchar2_table(1452) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333529202E752D636F6C6F722D626F72646572';
wwv_flow_api.g_varchar2_table(1453) := '207B0D0A2020626F726465722D636F6C6F723A20233661616434323B0D0A20207374726F6B653A20233661616434323B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F72207B0D0A2020';
wwv_flow_api.g_varchar2_table(1454) := '6261636B67726F756E642D636F6C6F723A20236339636133393B0D0A202066696C6C3A20236339636133393B0D0A2020636F6C6F723A20233264326530343B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629';
wwv_flow_api.g_varchar2_table(1455) := '202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236339636133393B0D';
wwv_flow_api.g_varchar2_table(1456) := '0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D74657874207B';
wwv_flow_api.g_varchar2_table(1457) := '0D0A2020636F6C6F723A20236339636133393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333629202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1458) := '333629202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236339636133393B0D0A20207374726F6B653A20236339636133393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1459) := '20333729202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236439623133623B0D0A202066696C6C3A20236439623133623B0D0A2020636F6C6F723A20233436333430303B0D0A7D0D0A2E752D636F6C6F7273203E203A';
wwv_flow_api.g_varchar2_table(1460) := '6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1461) := '6E642D636F6C6F723A20236439623133623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20';
wwv_flow_api.g_varchar2_table(1462) := '333729202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236439623133623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D62642C0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1463) := '3E203A6E74682D6368696C642834356E202B20333729202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236439623133623B0D0A20207374726F6B653A20236439623133623B0D0A7D0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1464) := '203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236437366132373B0D0A202066696C6C3A20236437366132373B0D0A2020636F6C6F723A2023666666666666';
wwv_flow_api.g_varchar2_table(1465) := '3B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D6261636B67';
wwv_flow_api.g_varchar2_table(1466) := '726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236437366132373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F727320';
wwv_flow_api.g_varchar2_table(1467) := '3E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236437366132373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F';
wwv_flow_api.g_varchar2_table(1468) := '6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333829202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236437366132373B0D0A20207374726F6B653A20236437';
wwv_flow_api.g_varchar2_table(1469) := '366132373B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236432343233623B0D0A202066696C6C3A2023643234323362';
wwv_flow_api.g_varchar2_table(1470) := '3B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B';
wwv_flow_api.g_varchar2_table(1471) := '20333929202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236432343233623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C';
wwv_flow_api.g_varchar2_table(1472) := '6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236432343233623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368';
wwv_flow_api.g_varchar2_table(1473) := '696C642834356E202B20333929202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20333929202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023643234';
wwv_flow_api.g_varchar2_table(1474) := '3233623B0D0A20207374726F6B653A20236432343233623B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20236431343336';
wwv_flow_api.g_varchar2_table(1475) := '663B0D0A202066696C6C3A20236431343336663B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273';
wwv_flow_api.g_varchar2_table(1476) := '203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236431343336663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D636869';
wwv_flow_api.g_varchar2_table(1477) := '6C642834356E202B20343029202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20236431343336663B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1478) := '2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343029202E752D636F6C6F722D626F72646572207B0D0A20';
wwv_flow_api.g_varchar2_table(1479) := '20626F726465722D636F6C6F723A20236431343336663B0D0A20207374726F6B653A20236431343336663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F72207B0D0A20206261636B67';
wwv_flow_api.g_varchar2_table(1480) := '726F756E642D636F6C6F723A20236261336438383B0D0A202066696C6C3A20236261336438383B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D63';
wwv_flow_api.g_varchar2_table(1481) := '6F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236261336438383B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1482) := '752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D74657874207B0D0A202063';
wwv_flow_api.g_varchar2_table(1483) := '6F6C6F723A20236261336438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343129202E';
wwv_flow_api.g_varchar2_table(1484) := '752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236261336438383B0D0A20207374726F6B653A20236261336438383B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2034322920';
wwv_flow_api.g_varchar2_table(1485) := '2E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233737333339333B0D0A202066696C6C3A20233737333339333B0D0A2020636F6C6F723A20236636656666393B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D63';
wwv_flow_api.g_varchar2_table(1486) := '68696C642834356E202B20343229202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1487) := '6C6F723A20233737333339333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E';
wwv_flow_api.g_varchar2_table(1488) := '752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233737333339333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343229202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1489) := '682D6368696C642834356E202B20343229202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233737333339333B0D0A20207374726F6B653A20233737333339333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1490) := '74682D6368696C642834356E202B20343329202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233364346561333B0D0A202066696C6C3A20233364346561333B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D';
wwv_flow_api.g_varchar2_table(1491) := '0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D6261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1492) := '207B0D0A20206261636B67726F756E642D636F6C6F723A20233364346561333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74';
wwv_flow_api.g_varchar2_table(1493) := '682D6368696C642834356E202B20343329202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233364346561333B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D62';
wwv_flow_api.g_varchar2_table(1494) := '642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343329202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233364346561333B0D0A20207374726F6B653A20233364346561333B';
wwv_flow_api.g_varchar2_table(1495) := '0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233863396562303B0D0A202066696C6C3A20233863396562303B0D0A2020';
wwv_flow_api.g_varchar2_table(1496) := '636F6C6F723A20233238336134643B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B2034342920';
wwv_flow_api.g_varchar2_table(1497) := '2E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233863396562303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D7478';
wwv_flow_api.g_varchar2_table(1498) := '742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233863396562303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834';
wwv_flow_api.g_varchar2_table(1499) := '356E202B20343429202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343429202E752D636F6C6F722D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233863396562303B0D';
wwv_flow_api.g_varchar2_table(1500) := '0A20207374726F6B653A20233863396562303B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F72207B0D0A20206261636B67726F756E642D636F6C6F723A20233465373339313B0D0A20';
null;
end;
/
begin
wwv_flow_api.g_varchar2_table(1501) := '2066696C6C3A20233465373339313B0D0A2020636F6C6F723A20236666666666663B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D62672C0D0A2E752D636F6C6F7273203E203A6E';
wwv_flow_api.g_varchar2_table(1502) := '74682D6368696C642834356E202B20343529202E752D636F6C6F722D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233465373339313B0D0A7D0D0A2E752D636F6C6F7273203E203A6E74682D6368696C64283435';
wwv_flow_api.g_varchar2_table(1503) := '6E202B20343529202E752D636F6C6F722D7478742C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D74657874207B0D0A2020636F6C6F723A20233465373339313B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1504) := '6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D62642C0D0A2E752D636F6C6F7273203E203A6E74682D6368696C642834356E202B20343529202E752D636F6C6F722D626F72646572207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1505) := '65722D636F6C6F723A20233465373339313B0D0A20207374726F6B653A20233465373339313B0D0A7D0D0A2E752D636F6C6F722D31207B0D0A20206261636B67726F756E642D636F6C6F723A20236464313830612021696D706F7274616E743B0D0A2020';
wwv_flow_api.g_varchar2_table(1506) := '66696C6C3A20236464313830612021696D706F7274616E743B0D0A2020636F6C6F723A20236665653965382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D312D62672C0D0A2E752D636F6C6F722D312D6261636B67726F756E64207B0D';
wwv_flow_api.g_varchar2_table(1507) := '0A20206261636B67726F756E642D636F6C6F723A20236464313830612021696D706F7274616E743B0D0A202066696C6C3A20236464313830612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D312D7478742C0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1508) := '312D74657874207B0D0A2020636F6C6F723A20236464313830612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D312D62642C0D0A2E752D636F6C6F722D312D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023646431';
wwv_flow_api.g_varchar2_table(1509) := '3830612021696D706F7274616E743B0D0A20207374726F6B653A20236464313830612021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32207B0D0A20206261636B67726F756E642D636F6C6F723A20233133423643462021696D706F7274';
wwv_flow_api.g_varchar2_table(1510) := '616E743B0D0A202066696C6C3A20233133423643462021696D706F7274616E743B0D0A2020636F6C6F723A20236534663966642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D322D62672C0D0A2E752D636F6C6F722D322D6261636B67';
wwv_flow_api.g_varchar2_table(1511) := '726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233133423643462021696D706F7274616E743B0D0A202066696C6C3A20233133423643462021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D322D7478742C0D0A2E';
wwv_flow_api.g_varchar2_table(1512) := '752D636F6C6F722D322D74657874207B0D0A2020636F6C6F723A20233133423643462021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D322D62642C0D0A2E752D636F6C6F722D322D626F72646572207B0D0A2020626F726465722D636F6C';
wwv_flow_api.g_varchar2_table(1513) := '6F723A20233133423643462021696D706F7274616E743B0D0A20207374726F6B653A20233133423643462021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33207B0D0A20206261636B67726F756E642D636F6C6F723A2023324542464243';
wwv_flow_api.g_varchar2_table(1514) := '2021696D706F7274616E743B0D0A202066696C6C3A20233245424642432021696D706F7274616E743B0D0A2020636F6C6F723A20236630666366622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D332D62672C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1515) := '2D332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233245424642432021696D706F7274616E743B0D0A202066696C6C3A20233245424642432021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33';
wwv_flow_api.g_varchar2_table(1516) := '2D7478742C0D0A2E752D636F6C6F722D332D74657874207B0D0A2020636F6C6F723A20233245424642432021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D332D62642C0D0A2E752D636F6C6F722D332D626F72646572207B0D0A2020626F';
wwv_flow_api.g_varchar2_table(1517) := '726465722D636F6C6F723A20233245424642432021696D706F7274616E743B0D0A20207374726F6B653A20233245424642432021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1518) := '20233343414638352021696D706F7274616E743B0D0A202066696C6C3A20233343414638352021696D706F7274616E743B0D0A2020636F6C6F723A20236630666166362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D342D62672C0D0A';
wwv_flow_api.g_varchar2_table(1519) := '2E752D636F6C6F722D342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233343414638352021696D706F7274616E743B0D0A202066696C6C3A20233343414638352021696D706F7274616E743B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1520) := '2D636F6C6F722D342D7478742C0D0A2E752D636F6C6F722D342D74657874207B0D0A2020636F6C6F723A20233343414638352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D342D62642C0D0A2E752D636F6C6F722D342D626F72646572';
wwv_flow_api.g_varchar2_table(1521) := '207B0D0A2020626F726465722D636F6C6F723A20233343414638352021696D706F7274616E743B0D0A20207374726F6B653A20233343414638352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D35207B0D0A20206261636B67726F756E';
wwv_flow_api.g_varchar2_table(1522) := '642D636F6C6F723A20233831424235462021696D706F7274616E743B0D0A202066696C6C3A20233831424235462021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1523) := '2D352D62672C0D0A2E752D636F6C6F722D352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233831424235462021696D706F7274616E743B0D0A202066696C6C3A20233831424235462021696D706F7274616E74';
wwv_flow_api.g_varchar2_table(1524) := '3B0D0A7D0D0A2E752D636F6C6F722D352D7478742C0D0A2E752D636F6C6F722D352D74657874207B0D0A2020636F6C6F723A20233831424235462021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D352D62642C0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1525) := '352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233831424235462021696D706F7274616E743B0D0A20207374726F6B653A20233831424235462021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D36207B0D0A202062';
wwv_flow_api.g_varchar2_table(1526) := '61636B67726F756E642D636F6C6F723A20234444444535332021696D706F7274616E743B0D0A202066696C6C3A20234444444535332021696D706F7274616E743B0D0A2020636F6C6F723A20233261326130382021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1527) := '2E752D636F6C6F722D362D62672C0D0A2E752D636F6C6F722D362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234444444535332021696D706F7274616E743B0D0A202066696C6C3A2023444444453533202169';
wwv_flow_api.g_varchar2_table(1528) := '6D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D362D7478742C0D0A2E752D636F6C6F722D362D74657874207B0D0A2020636F6C6F723A20234444444535332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D362D62642C0D0A2E';
wwv_flow_api.g_varchar2_table(1529) := '752D636F6C6F722D362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234444444535332021696D706F7274616E743B0D0A20207374726F6B653A20234444444535332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1530) := '37207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534412021696D706F7274616E743B0D0A202066696C6C3A20234642434534412021696D706F7274616E743B0D0A2020636F6C6F723A20233434333330322021696D706F727461';
wwv_flow_api.g_varchar2_table(1531) := '6E743B0D0A7D0D0A2E752D636F6C6F722D372D62672C0D0A2E752D636F6C6F722D372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234642434534412021696D706F7274616E743B0D0A202066696C6C3A202346';
wwv_flow_api.g_varchar2_table(1532) := '42434534412021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D372D7478742C0D0A2E752D636F6C6F722D372D74657874207B0D0A2020636F6C6F723A20234642434534412021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D';
wwv_flow_api.g_varchar2_table(1533) := '372D62642C0D0A2E752D636F6C6F722D372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234642434534412021696D706F7274616E743B0D0A20207374726F6B653A20234642434534412021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1534) := '752D636F6C6F722D38207B0D0A20206261636B67726F756E642D636F6C6F723A20234544383133452021696D706F7274616E743B0D0A202066696C6C3A20234544383133452021696D706F7274616E743B0D0A2020636F6C6F723A202366666666666620';
wwv_flow_api.g_varchar2_table(1535) := '21696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D382D62672C0D0A2E752D636F6C6F722D382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234544383133452021696D706F7274616E743B0D0A2020';
wwv_flow_api.g_varchar2_table(1536) := '66696C6C3A20234544383133452021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D382D7478742C0D0A2E752D636F6C6F722D382D74657874207B0D0A2020636F6C6F723A20234544383133452021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1537) := '752D636F6C6F722D382D62642C0D0A2E752D636F6C6F722D382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234544383133452021696D706F7274616E743B0D0A20207374726F6B653A20234544383133452021696D706F7274616E';
wwv_flow_api.g_varchar2_table(1538) := '743B0D0A7D0D0A2E752D636F6C6F722D39207B0D0A20206261636B67726F756E642D636F6C6F723A20234539354235342021696D706F7274616E743B0D0A202066696C6C3A20234539354235342021696D706F7274616E743B0D0A2020636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1539) := '236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D392D62672C0D0A2E752D636F6C6F722D392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234539354235342021696D706F7274';
wwv_flow_api.g_varchar2_table(1540) := '616E743B0D0A202066696C6C3A20234539354235342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D392D7478742C0D0A2E752D636F6C6F722D392D74657874207B0D0A2020636F6C6F723A20234539354235342021696D706F7274616E';
wwv_flow_api.g_varchar2_table(1541) := '743B0D0A7D0D0A2E752D636F6C6F722D392D62642C0D0A2E752D636F6C6F722D392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234539354235342021696D706F7274616E743B0D0A20207374726F6B653A20234539354235342021';
wwv_flow_api.g_varchar2_table(1542) := '696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3130207B0D0A20206261636B67726F756E642D636F6C6F723A20234538354438382021696D706F7274616E743B0D0A202066696C6C3A20234538354438382021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1543) := '2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31302D62672C0D0A2E752D636F6C6F722D31302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023453835';
wwv_flow_api.g_varchar2_table(1544) := '4438382021696D706F7274616E743B0D0A202066696C6C3A20234538354438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31302D7478742C0D0A2E752D636F6C6F722D31302D74657874207B0D0A2020636F6C6F723A2023453835';
wwv_flow_api.g_varchar2_table(1545) := '4438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31302D62642C0D0A2E752D636F6C6F722D31302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234538354438382021696D706F7274616E743B0D0A20207374';
wwv_flow_api.g_varchar2_table(1546) := '726F6B653A20234538354438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3131207B0D0A20206261636B67726F756E642D636F6C6F723A20234341353839442021696D706F7274616E743B0D0A202066696C6C3A20234341353839';
wwv_flow_api.g_varchar2_table(1547) := '442021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31312D62672C0D0A2E752D636F6C6F722D31312D6261636B67726F756E64207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1548) := '756E642D636F6C6F723A20234341353839442021696D706F7274616E743B0D0A202066696C6C3A20234341353839442021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31312D7478742C0D0A2E752D636F6C6F722D31312D74657874207B';
wwv_flow_api.g_varchar2_table(1549) := '0D0A2020636F6C6F723A20234341353839442021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31312D62642C0D0A2E752D636F6C6F722D31312D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023434135383944202169';
wwv_flow_api.g_varchar2_table(1550) := '6D706F7274616E743B0D0A20207374726F6B653A20234341353839442021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3132207B0D0A20206261636B67726F756E642D636F6C6F723A20233835344539422021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1551) := '0A202066696C6C3A20233835344539422021696D706F7274616E743B0D0A2020636F6C6F723A20236636663066382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31322D62672C0D0A2E752D636F6C6F722D31322D6261636B67726F75';
wwv_flow_api.g_varchar2_table(1552) := '6E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233835344539422021696D706F7274616E743B0D0A202066696C6C3A20233835344539422021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31322D7478742C0D0A2E752D';
wwv_flow_api.g_varchar2_table(1553) := '636F6C6F722D31322D74657874207B0D0A2020636F6C6F723A20233835344539422021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31322D62642C0D0A2E752D636F6C6F722D31322D626F72646572207B0D0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(1554) := '6C6F723A20233835344539422021696D706F7274616E743B0D0A20207374726F6B653A20233835344539422021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3133207B0D0A20206261636B67726F756E642D636F6C6F723A202335413638';
wwv_flow_api.g_varchar2_table(1555) := '41442021696D706F7274616E743B0D0A202066696C6C3A20233541363841442021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31332D62672C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1556) := '6C6F722D31332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233541363841442021696D706F7274616E743B0D0A202066696C6C3A20233541363841442021696D706F7274616E743B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1557) := '6F722D31332D7478742C0D0A2E752D636F6C6F722D31332D74657874207B0D0A2020636F6C6F723A20233541363841442021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31332D62642C0D0A2E752D636F6C6F722D31332D626F72646572';
wwv_flow_api.g_varchar2_table(1558) := '207B0D0A2020626F726465722D636F6C6F723A20233541363841442021696D706F7274616E743B0D0A20207374726F6B653A20233541363841442021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3134207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1559) := '6E642D636F6C6F723A20234146424143352021696D706F7274616E743B0D0A202066696C6C3A20234146424143352021696D706F7274616E743B0D0A2020636F6C6F723A20233331336134342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1560) := '722D31342D62672C0D0A2E752D636F6C6F722D31342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20234146424143352021696D706F7274616E743B0D0A202066696C6C3A20234146424143352021696D706F7274';
wwv_flow_api.g_varchar2_table(1561) := '616E743B0D0A7D0D0A2E752D636F6C6F722D31342D7478742C0D0A2E752D636F6C6F722D31342D74657874207B0D0A2020636F6C6F723A20234146424143352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31342D62642C0D0A2E752D';
wwv_flow_api.g_varchar2_table(1562) := '636F6C6F722D31342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20234146424143352021696D706F7274616E743B0D0A20207374726F6B653A20234146424143352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31';
wwv_flow_api.g_varchar2_table(1563) := '35207B0D0A20206261636B67726F756E642D636F6C6F723A20233645383539382021696D706F7274616E743B0D0A202066696C6C3A20233645383539382021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F727461';
wwv_flow_api.g_varchar2_table(1564) := '6E743B0D0A7D0D0A2E752D636F6C6F722D31352D62672C0D0A2E752D636F6C6F722D31352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233645383539382021696D706F7274616E743B0D0A202066696C6C3A20';
wwv_flow_api.g_varchar2_table(1565) := '233645383539382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31352D7478742C0D0A2E752D636F6C6F722D31352D74657874207B0D0A2020636F6C6F723A20233645383539382021696D706F7274616E743B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1566) := '6C6F722D31352D62642C0D0A2E752D636F6C6F722D31352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233645383539382021696D706F7274616E743B0D0A20207374726F6B653A20233645383539382021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(1567) := '0D0A7D0D0A2E752D636F6C6F722D3136207B0D0A20206261636B67726F756E642D636F6C6F723A20236534343633622021696D706F7274616E743B0D0A202066696C6C3A20236534343633622021696D706F7274616E743B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1568) := '6666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31362D62672C0D0A2E752D636F6C6F722D31362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236534343633622021696D706F72';
wwv_flow_api.g_varchar2_table(1569) := '74616E743B0D0A202066696C6C3A20236534343633622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31362D7478742C0D0A2E752D636F6C6F722D31362D74657874207B0D0A2020636F6C6F723A20236534343633622021696D706F72';
wwv_flow_api.g_varchar2_table(1570) := '74616E743B0D0A7D0D0A2E752D636F6C6F722D31362D62642C0D0A2E752D636F6C6F722D31362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236534343633622021696D706F7274616E743B0D0A20207374726F6B653A2023653434';
wwv_flow_api.g_varchar2_table(1571) := '3633622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3137207B0D0A20206261636B67726F756E642D636F6C6F723A20233432633564392021696D706F7274616E743B0D0A202066696C6C3A20233432633564392021696D706F727461';
wwv_flow_api.g_varchar2_table(1572) := '6E743B0D0A2020636F6C6F723A20233035313531372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31372D62672C0D0A2E752D636F6C6F722D31372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1573) := '20233432633564392021696D706F7274616E743B0D0A202066696C6C3A20233432633564392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31372D7478742C0D0A2E752D636F6C6F722D31372D74657874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1574) := '20233432633564392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31372D62642C0D0A2E752D636F6C6F722D31372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233432633564392021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1575) := '0A20207374726F6B653A20233432633564392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3138207B0D0A20206261636B67726F756E642D636F6C6F723A20233538636363392021696D706F7274616E743B0D0A202066696C6C3A2023';
wwv_flow_api.g_varchar2_table(1576) := '3538636363392021696D706F7274616E743B0D0A2020636F6C6F723A20233039316331632021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31382D62672C0D0A2E752D636F6C6F722D31382D6261636B67726F756E64207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1577) := '636B67726F756E642D636F6C6F723A20233538636363392021696D706F7274616E743B0D0A202066696C6C3A20233538636363392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31382D7478742C0D0A2E752D636F6C6F722D31382D74';
wwv_flow_api.g_varchar2_table(1578) := '657874207B0D0A2020636F6C6F723A20233538636363392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31382D62642C0D0A2E752D636F6C6F722D31382D626F72646572207B0D0A2020626F726465722D636F6C6F723A202335386363';
wwv_flow_api.g_varchar2_table(1579) := '63392021696D706F7274616E743B0D0A20207374726F6B653A20233538636363392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3139207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639642021696D706F7274';
wwv_flow_api.g_varchar2_table(1580) := '616E743B0D0A202066696C6C3A20233633626639642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31392D62672C0D0A2E752D636F6C6F722D31392D626163';
wwv_flow_api.g_varchar2_table(1581) := '6B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233633626639642021696D706F7274616E743B0D0A202066696C6C3A20233633626639642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31392D7478742C';
wwv_flow_api.g_varchar2_table(1582) := '0D0A2E752D636F6C6F722D31392D74657874207B0D0A2020636F6C6F723A20233633626639642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D31392D62642C0D0A2E752D636F6C6F722D31392D626F72646572207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1583) := '65722D636F6C6F723A20233633626639642021696D706F7274616E743B0D0A20207374726F6B653A20233633626639642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3230207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1584) := '233961633937662021696D706F7274616E743B0D0A202066696C6C3A20233961633937662021696D706F7274616E743B0D0A2020636F6C6F723A20233230333331362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32302D62672C0D0A';
wwv_flow_api.g_varchar2_table(1585) := '2E752D636F6C6F722D32302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233961633937662021696D706F7274616E743B0D0A202066696C6C3A20233961633937662021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1586) := '752D636F6C6F722D32302D7478742C0D0A2E752D636F6C6F722D32302D74657874207B0D0A2020636F6C6F723A20233961633937662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32302D62642C0D0A2E752D636F6C6F722D32302D62';
wwv_flow_api.g_varchar2_table(1587) := '6F72646572207B0D0A2020626F726465722D636F6C6F723A20233961633937662021696D706F7274616E743B0D0A20207374726F6B653A20233961633937662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3231207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1588) := '6B67726F756E642D636F6C6F723A20236534653537352021696D706F7274616E743B0D0A202066696C6C3A20236534653537352021696D706F7274616E743B0D0A2020636F6C6F723A20233463346330662021696D706F7274616E743B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1589) := '2D636F6C6F722D32312D62672C0D0A2E752D636F6C6F722D32312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236534653537352021696D706F7274616E743B0D0A202066696C6C3A2023653465353735202169';
wwv_flow_api.g_varchar2_table(1590) := '6D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32312D7478742C0D0A2E752D636F6C6F722D32312D74657874207B0D0A2020636F6C6F723A20236534653537352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32312D62642C';
wwv_flow_api.g_varchar2_table(1591) := '0D0A2E752D636F6C6F722D32312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236534653537352021696D706F7274616E743B0D0A20207374726F6B653A20236534653537352021696D706F7274616E743B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1592) := '6C6F722D3232207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836652021696D706F7274616E743B0D0A202066696C6C3A20236663643836652021696D706F7274616E743B0D0A2020636F6C6F723A20233639346630322021696D';
wwv_flow_api.g_varchar2_table(1593) := '706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32322D62672C0D0A2E752D636F6C6F722D32322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236663643836652021696D706F7274616E743B0D0A202066';
wwv_flow_api.g_varchar2_table(1594) := '696C6C3A20236663643836652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32322D7478742C0D0A2E752D636F6C6F722D32322D74657874207B0D0A2020636F6C6F723A20236663643836652021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1595) := '2E752D636F6C6F722D32322D62642C0D0A2E752D636F6C6F722D32322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236663643836652021696D706F7274616E743B0D0A20207374726F6B653A20236663643836652021696D706F72';
wwv_flow_api.g_varchar2_table(1596) := '74616E743B0D0A7D0D0A2E752D636F6C6F722D3233207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136352021696D706F7274616E743B0D0A202066696C6C3A20236631396136352021696D706F7274616E743B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1597) := '6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32332D62672C0D0A2E752D636F6C6F722D32332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236631396136352021';
wwv_flow_api.g_varchar2_table(1598) := '696D706F7274616E743B0D0A202066696C6C3A20236631396136352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32332D7478742C0D0A2E752D636F6C6F722D32332D74657874207B0D0A2020636F6C6F723A20236631396136352021';
wwv_flow_api.g_varchar2_table(1599) := '696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32332D62642C0D0A2E752D636F6C6F722D32332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236631396136352021696D706F7274616E743B0D0A20207374726F6B653A';
wwv_flow_api.g_varchar2_table(1600) := '20236631396136352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3234207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376337362021696D706F7274616E743B0D0A202066696C6C3A20236564376337362021696D';
wwv_flow_api.g_varchar2_table(1601) := '706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32342D62672C0D0A2E752D636F6C6F722D32342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1602) := '6F6C6F723A20236564376337362021696D706F7274616E743B0D0A202066696C6C3A20236564376337362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32342D7478742C0D0A2E752D636F6C6F722D32342D74657874207B0D0A202063';
wwv_flow_api.g_varchar2_table(1603) := '6F6C6F723A20236564376337362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32342D62642C0D0A2E752D636F6C6F722D32342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236564376337362021696D706F7274';
wwv_flow_api.g_varchar2_table(1604) := '616E743B0D0A20207374726F6B653A20236564376337362021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3235207B0D0A20206261636B67726F756E642D636F6C6F723A20236564376461302021696D706F7274616E743B0D0A20206669';
wwv_flow_api.g_varchar2_table(1605) := '6C6C3A20236564376461302021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32352D62672C0D0A2E752D636F6C6F722D32352D6261636B67726F756E64207B0D';
wwv_flow_api.g_varchar2_table(1606) := '0A20206261636B67726F756E642D636F6C6F723A20236564376461302021696D706F7274616E743B0D0A202066696C6C3A20236564376461302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32352D7478742C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1607) := '2D32352D74657874207B0D0A2020636F6C6F723A20236564376461302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32352D62642C0D0A2E752D636F6C6F722D32352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1608) := '236564376461302021696D706F7274616E743B0D0A20207374726F6B653A20236564376461302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3236207B0D0A20206261636B67726F756E642D636F6C6F723A2023643537396231202169';
wwv_flow_api.g_varchar2_table(1609) := '6D706F7274616E743B0D0A202066696C6C3A20236435373962312021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32362D62672C0D0A2E752D636F6C6F722D32';
wwv_flow_api.g_varchar2_table(1610) := '362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236435373962312021696D706F7274616E743B0D0A202066696C6C3A20236435373962312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3236';
wwv_flow_api.g_varchar2_table(1611) := '2D7478742C0D0A2E752D636F6C6F722D32362D74657874207B0D0A2020636F6C6F723A20236435373962312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32362D62642C0D0A2E752D636F6C6F722D32362D626F72646572207B0D0A20';
wwv_flow_api.g_varchar2_table(1612) := '20626F726465722D636F6C6F723A20236435373962312021696D706F7274616E743B0D0A20207374726F6B653A20236435373962312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3237207B0D0A20206261636B67726F756E642D636F';
wwv_flow_api.g_varchar2_table(1613) := '6C6F723A20233964373161662021696D706F7274616E743B0D0A202066696C6C3A20233964373161662021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32372D';
wwv_flow_api.g_varchar2_table(1614) := '62672C0D0A2E752D636F6C6F722D32372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233964373161662021696D706F7274616E743B0D0A202066696C6C3A20233964373161662021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1615) := '0A7D0D0A2E752D636F6C6F722D32372D7478742C0D0A2E752D636F6C6F722D32372D74657874207B0D0A2020636F6C6F723A20233964373161662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32372D62642C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1616) := '2D32372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233964373161662021696D706F7274616E743B0D0A20207374726F6B653A20233964373161662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3238207B0D0A';
wwv_flow_api.g_varchar2_table(1617) := '20206261636B67726F756E642D636F6C6F723A20233762383662642021696D706F7274616E743B0D0A202066696C6C3A20233762383662642021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1618) := '7D0D0A2E752D636F6C6F722D32382D62672C0D0A2E752D636F6C6F722D32382D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233762383662642021696D706F7274616E743B0D0A202066696C6C3A202337623836';
wwv_flow_api.g_varchar2_table(1619) := '62642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32382D7478742C0D0A2E752D636F6C6F722D32382D74657874207B0D0A2020636F6C6F723A20233762383662642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32';
wwv_flow_api.g_varchar2_table(1620) := '382D62642C0D0A2E752D636F6C6F722D32382D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233762383662642021696D706F7274616E743B0D0A20207374726F6B653A20233762383662642021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1621) := '2E752D636F6C6F722D3239207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864312021696D706F7274616E743B0D0A202066696C6C3A20236266633864312021696D706F7274616E743B0D0A2020636F6C6F723A20233364343835';
wwv_flow_api.g_varchar2_table(1622) := '342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32392D62672C0D0A2E752D636F6C6F722D32392D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236266633864312021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(1623) := '0D0A202066696C6C3A20236266633864312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D32392D7478742C0D0A2E752D636F6C6F722D32392D74657874207B0D0A2020636F6C6F723A20236266633864312021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(1624) := '0D0A7D0D0A2E752D636F6C6F722D32392D62642C0D0A2E752D636F6C6F722D32392D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236266633864312021696D706F7274616E743B0D0A20207374726F6B653A20236266633864312021';
wwv_flow_api.g_varchar2_table(1625) := '696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3330207B0D0A20206261636B67726F756E642D636F6C6F723A20233862396461642021696D706F7274616E743B0D0A202066696C6C3A20233862396461642021696D706F7274616E743B0D0A';
wwv_flow_api.g_varchar2_table(1626) := '2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33302D62672C0D0A2E752D636F6C6F722D33302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A2023386239';
wwv_flow_api.g_varchar2_table(1627) := '6461642021696D706F7274616E743B0D0A202066696C6C3A20233862396461642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33302D7478742C0D0A2E752D636F6C6F722D33302D74657874207B0D0A2020636F6C6F723A2023386239';
wwv_flow_api.g_varchar2_table(1628) := '6461642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33302D62642C0D0A2E752D636F6C6F722D33302D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233862396461642021696D706F7274616E743B0D0A20207374';
wwv_flow_api.g_varchar2_table(1629) := '726F6B653A20233862396461642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3331207B0D0A20206261636B67726F756E642D636F6C6F723A20236334306430302021696D706F7274616E743B0D0A202066696C6C3A20236334306430';
wwv_flow_api.g_varchar2_table(1630) := '302021696D706F7274616E743B0D0A2020636F6C6F723A20236666653965372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33312D62672C0D0A2E752D636F6C6F722D33312D6261636B67726F756E64207B0D0A20206261636B67726F';
wwv_flow_api.g_varchar2_table(1631) := '756E642D636F6C6F723A20236334306430302021696D706F7274616E743B0D0A202066696C6C3A20236334306430302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33312D7478742C0D0A2E752D636F6C6F722D33312D74657874207B';
wwv_flow_api.g_varchar2_table(1632) := '0D0A2020636F6C6F723A20236334306430302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33312D62642C0D0A2E752D636F6C6F722D33312D626F72646572207B0D0A2020626F726465722D636F6C6F723A2023633430643030202169';
wwv_flow_api.g_varchar2_table(1633) := '6D706F7274616E743B0D0A20207374726F6B653A20236334306430302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3332207B0D0A20206261636B67726F756E642D636F6C6F723A20233032613562652021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1634) := '0A202066696C6C3A20233032613562652021696D706F7274616E743B0D0A2020636F6C6F723A20233030303030302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33322D62672C0D0A2E752D636F6C6F722D33322D6261636B67726F75';
wwv_flow_api.g_varchar2_table(1635) := '6E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233032613562652021696D706F7274616E743B0D0A202066696C6C3A20233032613562652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33322D7478742C0D0A2E752D';
wwv_flow_api.g_varchar2_table(1636) := '636F6C6F722D33322D74657874207B0D0A2020636F6C6F723A20233032613562652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33322D62642C0D0A2E752D636F6C6F722D33322D626F72646572207B0D0A2020626F726465722D636F';
wwv_flow_api.g_varchar2_table(1637) := '6C6F723A20233032613562652021696D706F7274616E743B0D0A20207374726F6B653A20233032613562652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3333207B0D0A20206261636B67726F756E642D636F6C6F723A202331386231';
wwv_flow_api.g_varchar2_table(1638) := '61652021696D706F7274616E743B0D0A202066696C6C3A20233138623161652021696D706F7274616E743B0D0A2020636F6C6F723A20233030303030302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33332D62672C0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1639) := '6C6F722D33332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233138623161652021696D706F7274616E743B0D0A202066696C6C3A20233138623161652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C';
wwv_flow_api.g_varchar2_table(1640) := '6F722D33332D7478742C0D0A2E752D636F6C6F722D33332D74657874207B0D0A2020636F6C6F723A20233138623161652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33332D62642C0D0A2E752D636F6C6F722D33332D626F72646572';
wwv_flow_api.g_varchar2_table(1641) := '207B0D0A2020626F726465722D636F6C6F723A20233138623161652021696D706F7274616E743B0D0A20207374726F6B653A20233138623161652021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3334207B0D0A20206261636B67726F75';
wwv_flow_api.g_varchar2_table(1642) := '6E642D636F6C6F723A20233234613437352021696D706F7274616E743B0D0A202066696C6C3A20233234613437352021696D706F7274616E743B0D0A2020636F6C6F723A20236566666266372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F';
wwv_flow_api.g_varchar2_table(1643) := '722D33342D62672C0D0A2E752D636F6C6F722D33342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233234613437352021696D706F7274616E743B0D0A202066696C6C3A20233234613437352021696D706F7274';
wwv_flow_api.g_varchar2_table(1644) := '616E743B0D0A7D0D0A2E752D636F6C6F722D33342D7478742C0D0A2E752D636F6C6F722D33342D74657874207B0D0A2020636F6C6F723A20233234613437352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33342D62642C0D0A2E752D';
wwv_flow_api.g_varchar2_table(1645) := '636F6C6F722D33342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233234613437352021696D706F7274616E743B0D0A20207374726F6B653A20233234613437352021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33';
wwv_flow_api.g_varchar2_table(1646) := '35207B0D0A20206261636B67726F756E642D636F6C6F723A20233661616434322021696D706F7274616E743B0D0A202066696C6C3A20233661616434322021696D706F7274616E743B0D0A2020636F6C6F723A20233063313530362021696D706F727461';
wwv_flow_api.g_varchar2_table(1647) := '6E743B0D0A7D0D0A2E752D636F6C6F722D33352D62672C0D0A2E752D636F6C6F722D33352D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233661616434322021696D706F7274616E743B0D0A202066696C6C3A20';
wwv_flow_api.g_varchar2_table(1648) := '233661616434322021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33352D7478742C0D0A2E752D636F6C6F722D33352D74657874207B0D0A2020636F6C6F723A20233661616434322021696D706F7274616E743B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1649) := '6C6F722D33352D62642C0D0A2E752D636F6C6F722D33352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233661616434322021696D706F7274616E743B0D0A20207374726F6B653A20233661616434322021696D706F7274616E743B';
wwv_flow_api.g_varchar2_table(1650) := '0D0A7D0D0A2E752D636F6C6F722D3336207B0D0A20206261636B67726F756E642D636F6C6F723A20236339636133392021696D706F7274616E743B0D0A202066696C6C3A20236339636133392021696D706F7274616E743B0D0A2020636F6C6F723A2023';
wwv_flow_api.g_varchar2_table(1651) := '3264326530342021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33362D62672C0D0A2E752D636F6C6F722D33362D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236339636133392021696D706F72';
wwv_flow_api.g_varchar2_table(1652) := '74616E743B0D0A202066696C6C3A20236339636133392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33362D7478742C0D0A2E752D636F6C6F722D33362D74657874207B0D0A2020636F6C6F723A20236339636133392021696D706F72';
wwv_flow_api.g_varchar2_table(1653) := '74616E743B0D0A7D0D0A2E752D636F6C6F722D33362D62642C0D0A2E752D636F6C6F722D33362D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236339636133392021696D706F7274616E743B0D0A20207374726F6B653A2023633963';
wwv_flow_api.g_varchar2_table(1654) := '6133392021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3337207B0D0A20206261636B67726F756E642D636F6C6F723A20236439623133622021696D706F7274616E743B0D0A202066696C6C3A20236439623133622021696D706F727461';
wwv_flow_api.g_varchar2_table(1655) := '6E743B0D0A2020636F6C6F723A20233436333430302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33372D62672C0D0A2E752D636F6C6F722D33372D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A';
wwv_flow_api.g_varchar2_table(1656) := '20236439623133622021696D706F7274616E743B0D0A202066696C6C3A20236439623133622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33372D7478742C0D0A2E752D636F6C6F722D33372D74657874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1657) := '20236439623133622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33372D62642C0D0A2E752D636F6C6F722D33372D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236439623133622021696D706F7274616E743B0D';
wwv_flow_api.g_varchar2_table(1658) := '0A20207374726F6B653A20236439623133622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3338207B0D0A20206261636B67726F756E642D636F6C6F723A20236437366132372021696D706F7274616E743B0D0A202066696C6C3A2023';
wwv_flow_api.g_varchar2_table(1659) := '6437366132372021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33382D62672C0D0A2E752D636F6C6F722D33382D6261636B67726F756E64207B0D0A20206261';
wwv_flow_api.g_varchar2_table(1660) := '636B67726F756E642D636F6C6F723A20236437366132372021696D706F7274616E743B0D0A202066696C6C3A20236437366132372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33382D7478742C0D0A2E752D636F6C6F722D33382D74';
wwv_flow_api.g_varchar2_table(1661) := '657874207B0D0A2020636F6C6F723A20236437366132372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33382D62642C0D0A2E752D636F6C6F722D33382D626F72646572207B0D0A2020626F726465722D636F6C6F723A202364373661';
wwv_flow_api.g_varchar2_table(1662) := '32372021696D706F7274616E743B0D0A20207374726F6B653A20236437366132372021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3339207B0D0A20206261636B67726F756E642D636F6C6F723A20236432343233622021696D706F7274';
wwv_flow_api.g_varchar2_table(1663) := '616E743B0D0A202066696C6C3A20236432343233622021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33392D62672C0D0A2E752D636F6C6F722D33392D626163';
wwv_flow_api.g_varchar2_table(1664) := '6B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236432343233622021696D706F7274616E743B0D0A202066696C6C3A20236432343233622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33392D7478742C';
wwv_flow_api.g_varchar2_table(1665) := '0D0A2E752D636F6C6F722D33392D74657874207B0D0A2020636F6C6F723A20236432343233622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D33392D62642C0D0A2E752D636F6C6F722D33392D626F72646572207B0D0A2020626F7264';
wwv_flow_api.g_varchar2_table(1666) := '65722D636F6C6F723A20236432343233622021696D706F7274616E743B0D0A20207374726F6B653A20236432343233622021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3430207B0D0A20206261636B67726F756E642D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1667) := '236431343336662021696D706F7274616E743B0D0A202066696C6C3A20236431343336662021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34302D62672C0D0A';
wwv_flow_api.g_varchar2_table(1668) := '2E752D636F6C6F722D34302D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236431343336662021696D706F7274616E743B0D0A202066696C6C3A20236431343336662021696D706F7274616E743B0D0A7D0D0A2E';
wwv_flow_api.g_varchar2_table(1669) := '752D636F6C6F722D34302D7478742C0D0A2E752D636F6C6F722D34302D74657874207B0D0A2020636F6C6F723A20236431343336662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34302D62642C0D0A2E752D636F6C6F722D34302D62';
wwv_flow_api.g_varchar2_table(1670) := '6F72646572207B0D0A2020626F726465722D636F6C6F723A20236431343336662021696D706F7274616E743B0D0A20207374726F6B653A20236431343336662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3431207B0D0A2020626163';
wwv_flow_api.g_varchar2_table(1671) := '6B67726F756E642D636F6C6F723A20236261336438382021696D706F7274616E743B0D0A202066696C6C3A20236261336438382021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E75';
wwv_flow_api.g_varchar2_table(1672) := '2D636F6C6F722D34312D62672C0D0A2E752D636F6C6F722D34312D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20236261336438382021696D706F7274616E743B0D0A202066696C6C3A2023626133643838202169';
wwv_flow_api.g_varchar2_table(1673) := '6D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34312D7478742C0D0A2E752D636F6C6F722D34312D74657874207B0D0A2020636F6C6F723A20236261336438382021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34312D62642C';
wwv_flow_api.g_varchar2_table(1674) := '0D0A2E752D636F6C6F722D34312D626F72646572207B0D0A2020626F726465722D636F6C6F723A20236261336438382021696D706F7274616E743B0D0A20207374726F6B653A20236261336438382021696D706F7274616E743B0D0A7D0D0A2E752D636F';
wwv_flow_api.g_varchar2_table(1675) := '6C6F722D3432207B0D0A20206261636B67726F756E642D636F6C6F723A20233737333339332021696D706F7274616E743B0D0A202066696C6C3A20233737333339332021696D706F7274616E743B0D0A2020636F6C6F723A20236636656666392021696D';
wwv_flow_api.g_varchar2_table(1676) := '706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34322D62672C0D0A2E752D636F6C6F722D34322D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233737333339332021696D706F7274616E743B0D0A202066';
wwv_flow_api.g_varchar2_table(1677) := '696C6C3A20233737333339332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34322D7478742C0D0A2E752D636F6C6F722D34322D74657874207B0D0A2020636F6C6F723A20233737333339332021696D706F7274616E743B0D0A7D0D0A';
wwv_flow_api.g_varchar2_table(1678) := '2E752D636F6C6F722D34322D62642C0D0A2E752D636F6C6F722D34322D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233737333339332021696D706F7274616E743B0D0A20207374726F6B653A20233737333339332021696D706F72';
wwv_flow_api.g_varchar2_table(1679) := '74616E743B0D0A7D0D0A2E752D636F6C6F722D3433207B0D0A20206261636B67726F756E642D636F6C6F723A20233364346561332021696D706F7274616E743B0D0A202066696C6C3A20233364346561332021696D706F7274616E743B0D0A2020636F6C';
wwv_flow_api.g_varchar2_table(1680) := '6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34332D62672C0D0A2E752D636F6C6F722D34332D6261636B67726F756E64207B0D0A20206261636B67726F756E642D636F6C6F723A20233364346561332021';
wwv_flow_api.g_varchar2_table(1681) := '696D706F7274616E743B0D0A202066696C6C3A20233364346561332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34332D7478742C0D0A2E752D636F6C6F722D34332D74657874207B0D0A2020636F6C6F723A20233364346561332021';
wwv_flow_api.g_varchar2_table(1682) := '696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34332D62642C0D0A2E752D636F6C6F722D34332D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233364346561332021696D706F7274616E743B0D0A20207374726F6B653A';
wwv_flow_api.g_varchar2_table(1683) := '20233364346561332021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3434207B0D0A20206261636B67726F756E642D636F6C6F723A20233863396562302021696D706F7274616E743B0D0A202066696C6C3A20233863396562302021696D';
wwv_flow_api.g_varchar2_table(1684) := '706F7274616E743B0D0A2020636F6C6F723A20233238336134642021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34342D62672C0D0A2E752D636F6C6F722D34342D6261636B67726F756E64207B0D0A20206261636B67726F756E642D63';
wwv_flow_api.g_varchar2_table(1685) := '6F6C6F723A20233863396562302021696D706F7274616E743B0D0A202066696C6C3A20233863396562302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34342D7478742C0D0A2E752D636F6C6F722D34342D74657874207B0D0A202063';
wwv_flow_api.g_varchar2_table(1686) := '6F6C6F723A20233863396562302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34342D62642C0D0A2E752D636F6C6F722D34342D626F72646572207B0D0A2020626F726465722D636F6C6F723A20233863396562302021696D706F7274';
wwv_flow_api.g_varchar2_table(1687) := '616E743B0D0A20207374726F6B653A20233863396562302021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D3435207B0D0A20206261636B67726F756E642D636F6C6F723A20233465373339312021696D706F7274616E743B0D0A20206669';
wwv_flow_api.g_varchar2_table(1688) := '6C6C3A20233465373339312021696D706F7274616E743B0D0A2020636F6C6F723A20236666666666662021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34352D62672C0D0A2E752D636F6C6F722D34352D6261636B67726F756E64207B0D';
wwv_flow_api.g_varchar2_table(1689) := '0A20206261636B67726F756E642D636F6C6F723A20233465373339312021696D706F7274616E743B0D0A202066696C6C3A20233465373339312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34352D7478742C0D0A2E752D636F6C6F72';
wwv_flow_api.g_varchar2_table(1690) := '2D34352D74657874207B0D0A2020636F6C6F723A20233465373339312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D34352D62642C0D0A2E752D636F6C6F722D34352D626F72646572207B0D0A2020626F726465722D636F6C6F723A20';
wwv_flow_api.g_varchar2_table(1691) := '233465373339312021696D706F7274616E743B0D0A20207374726F6B653A20233465373339312021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E74207B0D0A20206261636B67726F756E642D636F6C6F723A2074';
wwv_flow_api.g_varchar2_table(1692) := '72616E73706172656E742021696D706F7274616E743B0D0A2020636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E742D6267207B0D0A20206261636B67726F756E64';
wwv_flow_api.g_varchar2_table(1693) := '2D636F6C6F723A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E742D7478742C0D0A2E752D636F6C6F722D7472616E73706172656E742D74657874207B0D0A2020636F6C6F723A';
wwv_flow_api.g_varchar2_table(1694) := '207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A2E752D636F6C6F722D7472616E73706172656E742D62642C0D0A2E752D636F6C6F722D7472616E73706172656E742D626F72646572207B0D0A2020626F726465722D636F6C6F72';
wwv_flow_api.g_varchar2_table(1695) := '3A207472616E73706172656E742021696D706F7274616E743B0D0A7D0D0A';
null;
end;
/
begin
wwv_flow_api.create_theme_file(
 p_id=>wwv_flow_api.id(17473495427679381)
,p_theme_id=>42
,p_file_name=>'17473078144679375.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22757684176407675)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND'
,p_display_name=>'Page Background'
,p_display_sequence=>20
,p_template_types=>'PAGE'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22758467798407675)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT'
,p_display_name=>'Page Layout'
,p_display_sequence=>10
,p_template_types=>'PAGE'
,p_null_text=>'Floating (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22774749803407687)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22775185144407687)
,p_theme_id=>42
,p_name=>'ALERT_TITLE'
,p_display_name=>'Alert Title'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the title of the alert is displayed.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22775739289407689)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22776146102407689)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22779593593407690)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22779931548407690)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22781756998407692)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22782518380407692)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22783786741407693)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22784916720407693)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22785392309407693)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22787322560407695)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22790790027407698)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22791177841407698)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_ICON_POSITION'
,p_display_name=>'Collapsible Icon Position'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the position of the expand and collapse toggle for the region.'
,p_null_text=>'Start'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22791933154407698)
,p_theme_id=>42
,p_name=>'COLLAPSIBLE_BUTTON_ICONS'
,p_display_name=>'Collapsible Button Icons'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines which arrows to use to represent the icons for the collapse and expand button.'
,p_null_text=>'Arrows'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22793940073407700)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22794793727407700)
,p_theme_id=>42
,p_name=>'BODY_STYLE'
,p_display_name=>'Body Style'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the region''s body container.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22796095158407701)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON'
,p_display_name=>'Display Icon'
,p_display_sequence=>50
,p_template_types=>'REGION'
,p_help_text=>'Display the Hero Region icon.'
,p_null_text=>'Yes (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22796644995407701)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REGION'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Rounded Corners'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22798519614407703)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22800484948407704)
,p_theme_id=>42
,p_name=>'CALLOUT_POSITION'
,p_display_name=>'Callout Position'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Determines where the callout for the popup will be positioned relative to its parent.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22804329929407707)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER'
,p_display_name=>'Login Header'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Controls the display of the Login region header.'
,p_null_text=>'Icon and Title (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22812735157407712)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22813172016407712)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22813996008407712)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22816011771407714)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22817091899407717)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the overall style for the component.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22817695199407717)
,p_theme_id=>42
,p_name=>'COL_ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>150
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22818098039407717)
,p_theme_id=>42
,p_name=>'CONTENT_ALIGNMENT'
,p_display_name=>'Content Alignment'
,p_display_sequence=>90
,p_template_types=>'REPORT'
,p_null_text=>'Center (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22818408553407717)
,p_theme_id=>42
,p_name=>'COL_CONTENT_DESCRIPTION'
,p_display_name=>'Description'
,p_display_sequence=>130
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22818852143407717)
,p_theme_id=>42
,p_name=>'COL_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>110
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22819271781407717)
,p_theme_id=>42
,p_name=>'COL_MISC'
,p_display_name=>'Misc'
,p_display_sequence=>140
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22819686718407718)
,p_theme_id=>42
,p_name=>'COL_SELECTION'
,p_display_name=>'Selection'
,p_display_sequence=>100
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22820288903407718)
,p_theme_id=>42
,p_name=>'COL_CONTENT_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>120
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22820851740407718)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22822062748407720)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'REPORT'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22822637344407720)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>35
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22824257741407720)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22828032287407723)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22831661099407725)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22832247106407726)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22832648001407726)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22834232187407726)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22835839077407728)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22837672910407729)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>70
,p_template_types=>'REPORT'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22838484758407729)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22841002699407732)
,p_theme_id=>42
,p_name=>'MOBILE'
,p_display_name=>'Mobile'
,p_display_sequence=>100
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a mobile-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22841623335407732)
,p_theme_id=>42
,p_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_sequence=>90
,p_template_types=>'LIST'
,p_help_text=>'Determines the display for a desktop-sized screen'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22842601321407732)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22845254732407735)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22846480236407735)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22847601448407737)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22850220934407739)
,p_theme_id=>42
,p_name=>'ICON_SHAPE'
,p_display_name=>'Icon Shape'
,p_display_sequence=>60
,p_template_types=>'LIST'
,p_help_text=>'Determines the shape of the icon.'
,p_null_text=>'Circle'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22850869559407739)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22852424600407740)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE'
,p_display_name=>'Collapse Mode'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Icon (Default)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22855668159407742)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_help_text=>'Determines the height of the card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22857627319407743)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>80
,p_template_types=>'LIST'
,p_help_text=>'Sets the hover and focus animation.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22858292517407743)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22863873269407746)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22865265745407750)
,p_theme_id=>42
,p_name=>'ICON_HOVER_ANIMATION'
,p_display_name=>'Icon Hover Animation'
,p_display_sequence=>55
,p_template_types=>'BUTTON'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22866243366407751)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22868777581407762)
,p_theme_id=>42
,p_name=>'BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the bottom margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22869150082407762)
,p_theme_id=>42
,p_name=>'REGION_BOTTOM_MARGIN'
,p_display_name=>'Bottom Margin'
,p_display_sequence=>210
,p_template_types=>'REGION'
,p_help_text=>'Set the bottom margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22870794229407764)
,p_theme_id=>42
,p_name=>'LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'FIELD'
,p_help_text=>'Set the left margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22871106615407764)
,p_theme_id=>42
,p_name=>'REGION_LEFT_MARGIN'
,p_display_name=>'Left Margin'
,p_display_sequence=>220
,p_template_types=>'REGION'
,p_help_text=>'Set the left margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22872736378407765)
,p_theme_id=>42
,p_name=>'RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'FIELD'
,p_help_text=>'Set the right margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22873182925407765)
,p_theme_id=>42
,p_name=>'REGION_RIGHT_MARGIN'
,p_display_name=>'Right Margin'
,p_display_sequence=>230
,p_template_types=>'REGION'
,p_help_text=>'Set the right margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22874749350407765)
,p_theme_id=>42
,p_name=>'TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'FIELD'
,p_help_text=>'Set the top margin for this field.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22875161148407765)
,p_theme_id=>42
,p_name=>'REGION_TOP_MARGIN'
,p_display_name=>'Top Margin'
,p_display_sequence=>200
,p_template_types=>'REGION'
,p_help_text=>'Set the top margin for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22876703665407767)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22877158272407767)
,p_theme_id=>42
,p_name=>'SPACING_BOTTOM'
,p_display_name=>'Spacing Bottom'
,p_display_sequence=>100
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the bottom of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22877566928407767)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22877903617407767)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22878394981407767)
,p_theme_id=>42
,p_name=>'SPACING_TOP'
,p_display_name=>'Spacing Top'
,p_display_sequence=>90
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the top of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22878768907407767)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22879140374407768)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22880589294407768)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22881942841407768)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22882928852407770)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22883393355407770)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22883719723407770)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22884195197407770)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22884728416407770)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22885356100407771)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22885765955407771)
,p_theme_id=>42
,p_name=>'ITEM_POST_TEXT'
,p_display_name=>'Item Post Text'
,p_display_sequence=>30
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Post Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22886175734407771)
,p_theme_id=>42
,p_name=>'ITEM_PRE_TEXT'
,p_display_name=>'Item Pre Text'
,p_display_sequence=>20
,p_template_types=>'FIELD'
,p_help_text=>'Adjust the display of the Item Pre Text'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22886544914407771)
,p_theme_id=>42
,p_name=>'RADIO_GROUP_DISPLAY'
,p_display_name=>'Item Group Display'
,p_display_sequence=>300
,p_template_types=>'FIELD'
,p_help_text=>'Determines the display style for radio and check box items.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(22887310322407771)
,p_theme_id=>42
,p_name=>'PAGINATION_DISPLAY'
,p_display_name=>'Pagination Display'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of pagination for this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22754815026407673)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(22751830079407667)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22756157226407673)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(22754939008407673)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22756356231407673)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(22754939008407673)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22757867576407675)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_1'
,p_display_name=>'Background 1'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(22756409801407673)
,p_css_classes=>'t-LoginPage--bg1'
,p_group_id=>wwv_flow_api.id(22757684176407675)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22758006486407675)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_2'
,p_display_name=>'Background 2'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(22756409801407673)
,p_css_classes=>'t-LoginPage--bg2'
,p_group_id=>wwv_flow_api.id(22757684176407675)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22758230103407675)
,p_theme_id=>42
,p_name=>'PAGE_BACKGROUND_3'
,p_display_name=>'Background 3'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(22756409801407673)
,p_css_classes=>'t-LoginPage--bg3'
,p_group_id=>wwv_flow_api.id(22757684176407675)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22758683252407675)
,p_theme_id=>42
,p_name=>'PAGE_LAYOUT_SPLIT'
,p_display_name=>'Split'
,p_display_sequence=>1
,p_page_template_id=>wwv_flow_api.id(22756409801407673)
,p_css_classes=>'t-LoginPage--split'
,p_group_id=>wwv_flow_api.id(22758467798407675)
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22759959997407676)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_page_template_id=>wwv_flow_api.id(22758736326407675)
,p_css_classes=>'t-Dialog--noPadding'
,p_template_types=>'PAGE'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22760132099407676)
,p_theme_id=>42
,p_name=>'STRETCH_TO_FIT_WINDOW'
,p_display_name=>'Stretch to Fit Window'
,p_display_sequence=>10
,p_page_template_id=>wwv_flow_api.id(22758736326407675)
,p_css_classes=>'ui-dialog--stretch'
,p_template_types=>'PAGE'
,p_help_text=>'Stretch the dialog to fit the browser window.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22762944170407678)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(22760223370407676)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22765796564407679)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(22763070477407678)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22768889465407681)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(22765888808407679)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22771307719407682)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(22768955281407681)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22773848415407684)
,p_theme_id=>42
,p_name=>'STICKY_HEADER_ON_MOBILE'
,p_display_name=>'Sticky Header on Mobile'
,p_display_sequence=>100
,p_page_template_id=>wwv_flow_api.id(22771428404407682)
,p_css_classes=>'js-pageStickyMobileHeader'
,p_template_types=>'PAGE'
,p_help_text=>'This will position the contents of the Breadcrumb Bar region position so it sticks to the top of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22774523915407687)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22773972661407684)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22774963088407687)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22773972661407684)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(22774749803407687)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22775324915407687)
,p_theme_id=>42
,p_name=>'HIDDENHEADER'
,p_display_name=>'Hidden but Accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22773972661407684)
,p_css_classes=>'t-Alert--accessibleHeading'
,p_group_id=>wwv_flow_api.id(22775185144407687)
,p_template_types=>'REGION'
,p_help_text=>'Visually hides the alert title, but assistive technologies can still read it.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22775580908407689)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22773972661407684)
,p_css_classes=>'t-Alert--removeHeading'
,p_group_id=>wwv_flow_api.id(22775185144407687)
,p_template_types=>'REGION'
,p_help_text=>'Hides the Alert Title from being displayed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22775986620407689)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22773972661407684)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(22775739289407689)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22776370797407689)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22773972661407684)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(22776146102407689)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22776584750407689)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22773972661407684)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(22774749803407687)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22776724708407689)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22773972661407684)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(22775739289407689)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22776959055407689)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22773972661407684)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(22774749803407687)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22777193182407689)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22773972661407684)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(22775739289407689)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22777336145407689)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22773972661407684)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(22774749803407687)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22777588303407689)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22773972661407684)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(22776146102407689)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22779736057407690)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22778612489407690)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(22779593593407690)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22780146077407690)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(22778612489407690)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(22779931548407690)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22780359545407690)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(22778612489407690)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(22779593593407690)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22780590584407690)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(22778612489407690)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(22779931548407690)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22780742346407690)
,p_theme_id=>42
,p_name=>'STICK_TO_BOTTOM'
,p_display_name=>'Stick to Bottom for Mobile'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22778612489407690)
,p_css_classes=>'t-ButtonRegion--stickToBottom'
,p_template_types=>'REGION'
,p_help_text=>'This will position the button container region to the bottom of the screen for small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22781934563407692)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(22781756998407692)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22782142296407692)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(22781756998407692)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22782313549407692)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(22781756998407692)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22782754620407693)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(22782518380407692)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22782995256407693)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(22782518380407692)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22783178572407693)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(22782518380407692)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22783368845407693)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(22781756998407692)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22783594928407693)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(22782518380407692)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22783975138407693)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22784124783407693)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22784306152407693)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22784581386407693)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22784733544407693)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22785167569407693)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(22784916720407693)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22785540958407693)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(22785392309407693)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22785748943407695)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(22784916720407693)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22785970388407695)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22786148155407695)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(22779593593407690)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22786367052407695)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22786520738407695)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(22785392309407693)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22786700554407695)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22786913117407695)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22787189284407695)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22787552005407695)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(22787322560407695)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22787779573407695)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(22787322560407695)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22787948575407695)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22780852676407690)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(22779593593407690)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22788984724407696)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(22782518380407692)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22789101422407696)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(22782518380407692)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22789324469407696)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(22782518380407692)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22789505972407696)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(22782518380407692)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22789723877407696)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22789949759407696)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22790128706407696)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22790361166407696)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22790590553407696)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22790986163407698)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(22790790027407698)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22791316943407698)
,p_theme_id=>42
,p_name=>'CONRTOLS_POSITION_END'
,p_display_name=>'End'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'t-Region--controlsPosEnd'
,p_group_id=>wwv_flow_api.id(22791177841407698)
,p_template_types=>'REGION'
,p_help_text=>'Position the expand / collapse button to the end of the region header.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22791535051407698)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(22790790027407698)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22791750764407698)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(22785392309407693)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22792157665407698)
,p_theme_id=>42
,p_name=>'ICONS_PLUS_OR_MINUS'
,p_display_name=>'Plus or Minus'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'t-Region--hideShowIconsMath'
,p_group_id=>wwv_flow_api.id(22791933154407698)
,p_template_types=>'REGION'
,p_help_text=>'Use the plus and minus icons for the expand and collapse button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22792320228407698)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22792575157407698)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(22779593593407690)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22792733828407698)
,p_theme_id=>42
,p_name=>'REMEMBER_COLLAPSIBLE_STATE'
,p_display_name=>'Remember Collapsible State'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
,p_help_text=>'This option saves the current state of the collapsible region for the duration of the session.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22792964753407698)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(22779593593407690)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22793136406407698)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(22785392309407693)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22793361875407700)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22788069757407695)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(22779593593407690)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22793757856407700)
,p_theme_id=>42
,p_name=>'ADD_BODY_PADDING'
,p_display_name=>'Add Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22793442947407700)
,p_css_classes=>'t-ContentBlock--padded'
,p_template_types=>'REGION'
,p_help_text=>'Adds padding to the region''s body container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22794188826407700)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H1'
,p_display_name=>'Heading Level 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22793442947407700)
,p_css_classes=>'t-ContentBlock--h1'
,p_group_id=>wwv_flow_api.id(22793940073407700)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22794373263407700)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H2'
,p_display_name=>'Heading Level 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22793442947407700)
,p_css_classes=>'t-ContentBlock--h2'
,p_group_id=>wwv_flow_api.id(22793940073407700)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22794573738407700)
,p_theme_id=>42
,p_name=>'CONTENT_TITLE_H3'
,p_display_name=>'Heading Level 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22793442947407700)
,p_css_classes=>'t-ContentBlock--h3'
,p_group_id=>wwv_flow_api.id(22793940073407700)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22794992825407700)
,p_theme_id=>42
,p_name=>'LIGHT_BACKGROUND'
,p_display_name=>'Light Background'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22793442947407700)
,p_css_classes=>'t-ContentBlock--lightBG'
,p_group_id=>wwv_flow_api.id(22794793727407700)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly lighter background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22795129212407700)
,p_theme_id=>42
,p_name=>'SHADOW_BACKGROUND'
,p_display_name=>'Shadow Background'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22793442947407700)
,p_css_classes=>'t-ContentBlock--shadowBG'
,p_group_id=>wwv_flow_api.id(22794793727407700)
,p_template_types=>'REGION'
,p_help_text=>'Gives the region body a slightly darker background.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22795351322407700)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22793442947407700)
,p_css_classes=>'t-ContentBlock--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22796270347407701)
,p_theme_id=>42
,p_name=>'DISPLAY_ICON_NO'
,p_display_name=>'No'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22795414839407700)
,p_css_classes=>'t-HeroRegion--hideIcon'
,p_group_id=>wwv_flow_api.id(22796095158407701)
,p_template_types=>'REGION'
,p_help_text=>'Hide the Hero Region icon.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22796491926407701)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22795414839407700)
,p_css_classes=>'t-HeroRegion--featured'
,p_group_id=>wwv_flow_api.id(22779593593407690)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22796873301407701)
,p_theme_id=>42
,p_name=>'ICONS_CIRCULAR'
,p_display_name=>'Circle'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22795414839407700)
,p_css_classes=>'t-HeroRegion--iconsCircle'
,p_group_id=>wwv_flow_api.id(22796644995407701)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a circle.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22797071088407701)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22795414839407700)
,p_css_classes=>'t-HeroRegion--iconsSquare'
,p_group_id=>wwv_flow_api.id(22796644995407701)
,p_template_types=>'REGION'
,p_help_text=>'The icons are displayed within a square.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22797246576407701)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22795414839407700)
,p_css_classes=>'t-HeroRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the hero region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22797437261407701)
,p_theme_id=>42
,p_name=>'STACKED_FEATURED'
,p_display_name=>'Stacked Featured'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22795414839407700)
,p_css_classes=>'t-HeroRegion--featured t-HeroRegion--centered'
,p_group_id=>wwv_flow_api.id(22779593593407690)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22798156529407703)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22797530481407701)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22798369569407703)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22797530481407701)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22798792751407703)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22797530481407701)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(22798519614407703)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22798995656407703)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22797530481407701)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(22798519614407703)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22799169903407703)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22797530481407701)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22799395705407703)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(22797530481407701)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22799585720407703)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22797530481407701)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22799734735407704)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22797530481407701)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(22798519614407703)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22800665895407704)
,p_theme_id=>42
,p_name=>'ABOVE'
,p_display_name=>'Above'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22799874249407704)
,p_css_classes=>'js-popup-pos-above'
,p_group_id=>wwv_flow_api.id(22800484948407704)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout above or typically on top of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22800805147407704)
,p_theme_id=>42
,p_name=>'AFTER'
,p_display_name=>'After'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22799874249407704)
,p_css_classes=>'js-popup-pos-after'
,p_group_id=>wwv_flow_api.id(22800484948407704)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout after or typically to the right of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22801069656407704)
,p_theme_id=>42
,p_name=>'AUTO_HEIGHT_INLINE_DIALOG'
,p_display_name=>'Auto Height'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22799874249407704)
,p_css_classes=>'js-dialog-autoheight'
,p_template_types=>'REGION'
,p_help_text=>'This option will set the height of the dialog to fit its contents.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22801292229407704)
,p_theme_id=>42
,p_name=>'BEFORE'
,p_display_name=>'Before'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22799874249407704)
,p_css_classes=>'js-popup-pos-before'
,p_group_id=>wwv_flow_api.id(22800484948407704)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout before or typically to the left of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22801499559407706)
,p_theme_id=>42
,p_name=>'BELOW'
,p_display_name=>'Below'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22799874249407704)
,p_css_classes=>'js-popup-pos-below'
,p_group_id=>wwv_flow_api.id(22800484948407704)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout below or typically to the bottom of the parent.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22801663684407706)
,p_theme_id=>42
,p_name=>'DISPLAY_POPUP_CALLOUT'
,p_display_name=>'Display Popup Callout'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22799874249407704)
,p_css_classes=>'js-popup-callout'
,p_template_types=>'REGION'
,p_help_text=>'Use this option to add display a callout for the popup. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22801871576407706)
,p_theme_id=>42
,p_name=>'INSIDE'
,p_display_name=>'Inside'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(22799874249407704)
,p_css_classes=>'js-popup-pos-inside'
,p_group_id=>wwv_flow_api.id(22800484948407704)
,p_template_types=>'REGION'
,p_help_text=>'Positions the callout inside of the parent. This is useful when the parent is sufficiently large, such as a report or large region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22802059977407706)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22799874249407704)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(22798519614407703)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22802269298407706)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22799874249407704)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(22798519614407703)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22802412621407706)
,p_theme_id=>42
,p_name=>'NONE'
,p_display_name=>'None'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22799874249407704)
,p_css_classes=>'js-dialog-nosize'
,p_group_id=>wwv_flow_api.id(22798519614407703)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22802615441407706)
,p_theme_id=>42
,p_name=>'REMOVE_BODY_PADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22799874249407704)
,p_css_classes=>'t-DialogRegion--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes the padding around the region body.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22802810979407706)
,p_theme_id=>42
,p_name=>'REMOVE_PAGE_OVERLAY'
,p_display_name=>'Remove Page Overlay'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22799874249407704)
,p_css_classes=>'js-popup-noOverlay'
,p_template_types=>'REGION'
,p_help_text=>'This option will display the inline dialog without an overlay on the background.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22803010625407707)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22799874249407704)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(22798519614407703)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22803431836407707)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22803190075407707)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22803645760407707)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22803190075407707)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22804503933407707)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_ICON'
,p_display_name=>'Icon'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22803772076407707)
,p_css_classes=>'t-Login-region--headerIcon'
,p_group_id=>wwv_flow_api.id(22804329929407707)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Icon in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22804728318407707)
,p_theme_id=>42
,p_name=>'LOGIN_HEADER_TITLE'
,p_display_name=>'Title'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22803772076407707)
,p_css_classes=>'t-Login-region--headerTitle'
,p_group_id=>wwv_flow_api.id(22804329929407707)
,p_template_types=>'REGION'
,p_help_text=>'Displays only the Region Title in the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22804938918407707)
,p_theme_id=>42
,p_name=>'LOGO_HEADER_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22803772076407707)
,p_css_classes=>'t-Login-region--headerHidden'
,p_group_id=>wwv_flow_api.id(22804329929407707)
,p_template_types=>'REGION'
,p_help_text=>'Hides both the Region Icon and Title from the Login region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22805974924407709)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(22782518380407692)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22806194316407709)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(22782518380407692)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22806336020407709)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(22782518380407692)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22806584786407709)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(22782518380407692)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22806779506407709)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22806914075407709)
,p_theme_id=>42
,p_name=>'ACCENT_10'
,p_display_name=>'Accent 10'
,p_display_sequence=>100
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--accent10'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22807152163407709)
,p_theme_id=>42
,p_name=>'ACCENT_11'
,p_display_name=>'Accent 11'
,p_display_sequence=>110
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--accent11'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22807327001407709)
,p_theme_id=>42
,p_name=>'ACCENT_12'
,p_display_name=>'Accent 12'
,p_display_sequence=>120
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--accent12'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22807567864407709)
,p_theme_id=>42
,p_name=>'ACCENT_13'
,p_display_name=>'Accent 13'
,p_display_sequence=>130
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--accent13'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22807724866407709)
,p_theme_id=>42
,p_name=>'ACCENT_14'
,p_display_name=>'Accent 14'
,p_display_sequence=>140
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--accent14'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22807989122407709)
,p_theme_id=>42
,p_name=>'ACCENT_15'
,p_display_name=>'Accent 15'
,p_display_sequence=>150
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--accent15'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22808156089407710)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22808374325407710)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22808511242407710)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22808737109407710)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22808910992407710)
,p_theme_id=>42
,p_name=>'ACCENT_6'
,p_display_name=>'Accent 6'
,p_display_sequence=>60
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--accent6'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22809188012407710)
,p_theme_id=>42
,p_name=>'ACCENT_7'
,p_display_name=>'Accent 7'
,p_display_sequence=>70
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--accent7'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22809303841407710)
,p_theme_id=>42
,p_name=>'ACCENT_8'
,p_display_name=>'Accent 8'
,p_display_sequence=>80
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--accent8'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22809583120407710)
,p_theme_id=>42
,p_name=>'ACCENT_9'
,p_display_name=>'Accent 9'
,p_display_sequence=>90
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--accent9'
,p_group_id=>wwv_flow_api.id(22783786741407693)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22809758150407710)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(22784916720407693)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22809993050407710)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(22785392309407693)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22810131137407710)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(22784916720407693)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22810301129407710)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22810533820407710)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(22779593593407690)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22810750035407712)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(22779593593407690)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22810970167407712)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(22785392309407693)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22811165516407712)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22811339421407712)
,p_theme_id=>42
,p_name=>'SHOW_REGION_ICON'
,p_display_name=>'Show Region Icon'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--showIcon'
,p_template_types=>'REGION'
,p_help_text=>'Displays the region icon in the region header beside the region title'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22811556986407712)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(22779593593407690)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22811768153407712)
,p_theme_id=>42
,p_name=>'TEXT_CONTENT'
,p_display_name=>'Text Content'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(22805024331407707)
,p_css_classes=>'t-Region--textContent'
,p_group_id=>wwv_flow_api.id(22779593593407690)
,p_template_types=>'REGION'
,p_help_text=>'Useful for displaying primarily text-based content, such as FAQs and more.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22812930080407712)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22811847777407712)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(22812735157407712)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22813342327407712)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22811847777407712)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(22813172016407712)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22813575707407712)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22811847777407712)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22813730300407712)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22811847777407712)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(22813172016407712)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22814128433407714)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22811847777407712)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(22813996008407712)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22814347022407714)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22811847777407712)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(22813996008407712)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22814754910407714)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22814497036407714)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(22793940073407700)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22814999168407714)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22814497036407714)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22815113739407714)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(22814497036407714)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(22793940073407700)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22815364615407714)
,p_theme_id=>42
,p_name=>'USE_COMPACT_STYLE'
,p_display_name=>'Use Compact Style'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22814497036407714)
,p_css_classes=>'t-BreadcrumbRegion--compactTitle'
,p_template_types=>'REGION'
,p_help_text=>'Uses a compact style for the breadcrumbs.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22816201113407714)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(22815487023407714)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(22816011771407714)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22816439595407715)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22815487023407714)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(22816011771407714)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22816617465407715)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(22815487023407714)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22817206196407717)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(22816766798407715)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(22817091899407717)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact version of timeline with smaller text and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22817874258407717)
,p_theme_id=>42
,p_name=>'ACTIONS_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(22817385780407717)
,p_css_classes=>'t-ContentRow--hideActions'
,p_group_id=>wwv_flow_api.id(22817695199407717)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Actions column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22818217245407717)
,p_theme_id=>42
,p_name=>'ALIGNMENT_TOP'
,p_display_name=>'Top'
,p_display_sequence=>100
,p_report_template_id=>wwv_flow_api.id(22817385780407717)
,p_css_classes=>'t-ContentRow--alignTop'
,p_group_id=>wwv_flow_api.id(22818098039407717)
,p_template_types=>'REPORT'
,p_help_text=>'Aligns the content to the top of the row. This is useful when you expect that yours rows will vary in height (e.g. some rows will have longer descriptions than others).'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22818634914407717)
,p_theme_id=>42
,p_name=>'DESCRIPTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(22817385780407717)
,p_css_classes=>'t-ContentRow--hideDescription'
,p_group_id=>wwv_flow_api.id(22818408553407717)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Description from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22819090334407717)
,p_theme_id=>42
,p_name=>'ICON_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22817385780407717)
,p_css_classes=>'t-ContentRow--hideIcon'
,p_group_id=>wwv_flow_api.id(22818852143407717)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Icon from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22819479590407718)
,p_theme_id=>42
,p_name=>'MISC_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(22817385780407717)
,p_css_classes=>'t-ContentRow--hideMisc'
,p_group_id=>wwv_flow_api.id(22819271781407717)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Misc column from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22819850905407718)
,p_theme_id=>42
,p_name=>'SELECTION_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22817385780407717)
,p_css_classes=>'t-ContentRow--hideSelection'
,p_group_id=>wwv_flow_api.id(22819686718407718)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Selection column from being rendered on the screen.'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22820002421407718)
,p_theme_id=>42
,p_name=>'STYLE_COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(22817385780407717)
,p_css_classes=>'t-ContentRow--styleCompact'
,p_group_id=>wwv_flow_api.id(22817091899407717)
,p_template_types=>'REPORT'
,p_help_text=>'This option reduces the padding and font sizes to present a compact display of the same information.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22820469935407718)
,p_theme_id=>42
,p_name=>'TITLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22817385780407717)
,p_css_classes=>'t-ContentRow--hideTitle'
,p_group_id=>wwv_flow_api.id(22820288903407718)
,p_template_types=>'REPORT'
,p_help_text=>'Hides the Title from being rendered on the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22821076414407718)
,p_theme_id=>42
,p_name=>'2_COLUMN_GRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22820532286407718)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22821293014407718)
,p_theme_id=>42
,p_name=>'3_COLUMN_GRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22820532286407718)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22821451107407720)
,p_theme_id=>42
,p_name=>'4_COLUMN_GRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22820532286407718)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22821697008407720)
,p_theme_id=>42
,p_name=>'5_COLUMN_GRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(22820532286407718)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22821834496407720)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(22820532286407718)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22822286352407720)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22820532286407718)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(22822062748407720)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22822449422407720)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22820532286407718)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(22822062748407720)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22822808765407720)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22820532286407718)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(22822637344407720)
,p_template_types=>'REPORT'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22823056847407720)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22820532286407718)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22823236396407720)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22820532286407718)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22823468740407720)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22820532286407718)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22823634362407720)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(22820532286407718)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22823832963407720)
,p_theme_id=>42
,p_name=>'STACK'
,p_display_name=>'Stack'
,p_display_sequence=>5
,p_report_template_id=>wwv_flow_api.id(22820532286407718)
,p_css_classes=>'t-MediaList--stack'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22824403760407720)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22823998869407720)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(22824257741407720)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22824622819407721)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22823998869407720)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(22824257741407720)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22824839501407721)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22823998869407720)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(22824257741407720)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22825012706407721)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22823998869407720)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22825234137407721)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22823998869407720)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22825446519407721)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(22823998869407720)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(22824257741407720)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22825687288407721)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(22823998869407720)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(22824257741407720)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22825840820407721)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(22823998869407720)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(22824257741407720)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22826202851407721)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22825931245407721)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(22824257741407720)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22826473352407721)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22825931245407721)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(22824257741407720)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22826601873407721)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22825931245407721)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(22824257741407720)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22826843884407721)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22825931245407721)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22827066966407723)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22825931245407721)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22827212347407723)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(22825931245407721)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(22824257741407720)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22827454039407723)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(22825931245407721)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(22824257741407720)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22827686322407723)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(22825931245407721)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(22824257741407720)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22828273827407723)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(22828032287407723)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22828423192407723)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22828618349407723)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(22828032287407723)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22828844811407723)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22829032254407723)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(22828032287407723)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22829205897407723)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22829408149407723)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22829659929407723)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(22828032287407723)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22829890753407725)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(22828032287407723)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22830033047407725)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22830284856407725)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(22817091899407717)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22830467140407725)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22830605578407725)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22830814755407725)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22831040634407725)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(22817091899407717)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22831277999407725)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22827754665407723)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22831815959407726)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22831338776407725)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(22831661099407725)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22832093693407726)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22831338776407725)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(22831661099407725)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22832450776407726)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22831338776407725)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(22832247106407726)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22832867077407726)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22831338776407725)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(22832648001407726)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22833033144407726)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22831338776407725)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(22832648001407726)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22833222662407726)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(22831338776407725)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(22832648001407726)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22833459253407726)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22831338776407725)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(22832247106407726)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22833657154407726)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22831338776407725)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22833856745407726)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22831338776407725)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(22832648001407726)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22834472309407728)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22833901569407726)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(22834232187407726)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22834675879407728)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22833901569407726)
,p_css_classes=>'t-Comments--iconsRounded'
,p_group_id=>wwv_flow_api.id(22822062748407720)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22834825608407728)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22833901569407726)
,p_css_classes=>'t-Comments--iconsSquare'
,p_group_id=>wwv_flow_api.id(22822062748407720)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22835061649407728)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22833901569407726)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(22834232187407726)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22835615290407728)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22836011347407728)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(22835839077407728)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22836217991407728)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22836438519407728)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(22835839077407728)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22836643152407728)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22836818206407728)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(22835839077407728)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22837061148407728)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22837254974407729)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(22817091899407717)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22837442287407729)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(22817091899407717)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22837880450407729)
,p_theme_id=>42
,p_name=>'CARDS_COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(22837672910407729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22838027062407729)
,p_theme_id=>42
,p_name=>'CARD_RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(22837672910407729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22838226222407729)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(22817091899407717)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22838628375407729)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(22838484758407729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22838865733407729)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(22838484758407729)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22839079361407729)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22839230776407729)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(22817091899407717)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22839492549407729)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22839629376407729)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(22835839077407728)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22839842377407729)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(22822062748407720)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22840032095407729)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(22822062748407720)
,p_template_types=>'REPORT'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22840279102407731)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(22820851740407718)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22840483209407731)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(22835394100407728)
,p_css_classes=>'u-colors'
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22841291797407732)
,p_theme_id=>42
,p_name=>'DISPLAY_LABELS_SM'
,p_display_name=>'Display labels'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(22840757501407731)
,p_css_classes=>'t-NavTabs--displayLabels-sm'
,p_group_id=>wwv_flow_api.id(22841002699407732)
,p_template_types=>'LIST'
,p_help_text=>'Displays the label for the list items below the icon'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22841476977407732)
,p_theme_id=>42
,p_name=>'HIDE_LABELS_SM'
,p_display_name=>'Do not display labels'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(22840757501407731)
,p_css_classes=>'t-NavTabs--hiddenLabels-sm'
,p_group_id=>wwv_flow_api.id(22841002699407732)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22841893320407732)
,p_theme_id=>42
,p_name=>'LABEL_ABOVE_LG'
,p_display_name=>'Display labels above'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22840757501407731)
,p_css_classes=>'t-NavTabs--stacked'
,p_group_id=>wwv_flow_api.id(22841623335407732)
,p_template_types=>'LIST'
,p_help_text=>'Display the label stacked above the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22842086742407732)
,p_theme_id=>42
,p_name=>'LABEL_INLINE_LG'
,p_display_name=>'Display labels inline'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22840757501407731)
,p_css_classes=>'t-NavTabs--inlineLabels-lg'
,p_group_id=>wwv_flow_api.id(22841623335407732)
,p_template_types=>'LIST'
,p_help_text=>'Display the label inline with the icon and badge'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22842297507407732)
,p_theme_id=>42
,p_name=>'NO_LABEL_LG'
,p_display_name=>'Do not display labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22840757501407731)
,p_css_classes=>'t-NavTabs--hiddenLabels-lg'
,p_group_id=>wwv_flow_api.id(22841623335407732)
,p_template_types=>'LIST'
,p_help_text=>'Hides the label for the list item'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22842826192407734)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22842398256407732)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(22842601321407732)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22843091767407734)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22842398256407732)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(22842601321407732)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22843296989407734)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22842398256407732)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(22842601321407732)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22843463623407734)
,p_theme_id=>42
,p_name=>'VERTICAL_LIST'
,p_display_name=>'Vertical Orientation'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22842398256407732)
,p_css_classes=>'t-WizardSteps--vertical'
,p_template_types=>'LIST'
,p_help_text=>'Displays the wizard progress list in a vertical orientation and is suitable for displaying within a side column of a page.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22843631796407734)
,p_theme_id=>42
,p_name=>'WIZARD_PROGRESS_LINKS'
,p_display_name=>'Make Wizard Steps Clickable'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(22842398256407732)
,p_css_classes=>'js-wizardProgressLinks'
,p_template_types=>'LIST'
,p_help_text=>'This option will make the wizard steps clickable links.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22844068538407734)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(22843731514407734)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22844281309407734)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22843731514407734)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22844455980407734)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(22843731514407734)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22844672986407734)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22843731514407734)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22844802611407734)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22843731514407734)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22845492341407735)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22845679476407735)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22845851018407735)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22846040483407735)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22846260288407735)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22846652730407735)
,p_theme_id=>42
,p_name=>'CIRCULAR'
,p_display_name=>'Circular'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'t-BadgeList--circular'
,p_group_id=>wwv_flow_api.id(22846480236407735)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22846824109407735)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22847083466407737)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22847230880407737)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22847499460407737)
,p_theme_id=>42
,p_name=>'GRID'
,p_display_name=>'Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'t-BadgeList--dash'
,p_group_id=>wwv_flow_api.id(22846480236407735)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22847855142407737)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(22847601448407737)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22848088892407737)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(22847601448407737)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22848215700407737)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(22847601448407737)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22848438285407737)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22848601209407737)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(22847601448407737)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22848886386407737)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(22844932903407734)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(22847601448407737)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22849281564407737)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22848934064407737)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22849429194407737)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22848934064407737)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22849616221407737)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22848934064407737)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22849854094407739)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(22848934064407737)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22850090381407739)
,p_theme_id=>42
,p_name=>'APPLY_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(22848934064407737)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies colors from the Theme''s color palette to icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22850484377407739)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22848934064407737)
,p_css_classes=>'t-MediaList--iconsRounded'
,p_group_id=>wwv_flow_api.id(22850220934407739)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22850664100407739)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22848934064407737)
,p_css_classes=>'t-MediaList--iconsSquare'
,p_group_id=>wwv_flow_api.id(22850220934407739)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22851010379407739)
,p_theme_id=>42
,p_name=>'LIST_SIZE_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22848934064407737)
,p_css_classes=>'t-MediaList--large force-fa-lg'
,p_group_id=>wwv_flow_api.id(22850869559407739)
,p_template_types=>'LIST'
,p_help_text=>'Increases the size of the text and icons in the list.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22851258090407739)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22848934064407737)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22851456515407739)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22848934064407737)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22851675223407739)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22848934064407737)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Display an icon next to the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22851874338407739)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(22848934064407737)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22852203869407740)
,p_theme_id=>42
,p_name=>'COLLAPSED_DEFAULT'
,p_display_name=>'Collapsed by Default'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22851954945407739)
,p_css_classes=>'js-defaultCollapsed'
,p_template_types=>'LIST'
,p_help_text=>'This option will load the side navigation menu in a collapsed state by default.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22852688000407740)
,p_theme_id=>42
,p_name=>'COLLAPSE_STYLE_HIDDEN'
,p_display_name=>'Hidden'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22851954945407739)
,p_css_classes=>'js-navCollapsed--hidden'
,p_group_id=>wwv_flow_api.id(22852424600407740)
,p_template_types=>'LIST'
,p_help_text=>'Completely hide the navigation menu when it is collapsed.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22852897402407740)
,p_theme_id=>42
,p_name=>'ICON_DEFAULT'
,p_display_name=>'Icon (Default)'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22851954945407739)
,p_css_classes=>'js-navCollapsed--default'
,p_group_id=>wwv_flow_api.id(22852424600407740)
,p_template_types=>'LIST'
,p_help_text=>'Display icons when the navigation menu is collapsed for large screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22853008836407740)
,p_theme_id=>42
,p_name=>'STYLE_A'
,p_display_name=>'Style A'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22851954945407739)
,p_css_classes=>'t-TreeNav--styleA'
,p_group_id=>wwv_flow_api.id(22846480236407735)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation A'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22853246559407740)
,p_theme_id=>42
,p_name=>'STYLE_B'
,p_display_name=>'Style B'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22851954945407739)
,p_css_classes=>'t-TreeNav--styleB'
,p_group_id=>wwv_flow_api.id(22846480236407735)
,p_template_types=>'LIST'
,p_help_text=>'Style Variation B'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22853455284407740)
,p_theme_id=>42
,p_name=>'STYLE_C'
,p_display_name=>'Classic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22851954945407739)
,p_css_classes=>'t-TreeNav--classic'
,p_group_id=>wwv_flow_api.id(22846480236407735)
,p_template_types=>'LIST'
,p_help_text=>'Classic Style'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22853832448407740)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(22853514502407740)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22854071844407740)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(22853514502407740)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22854294595407740)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(22853514502407740)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22854433844407742)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(22853514502407740)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22854650588407742)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(22853514502407740)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22855050799407742)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22854759522407742)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22855427344407742)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22855838652407742)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(22855668159407742)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22856014661407742)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22856248624407743)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(22855668159407742)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22856424901407743)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22856698421407743)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(22855668159407742)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22856865596407743)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22857098488407743)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(22846480236407735)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22857265610407743)
,p_theme_id=>42
,p_name=>'BLOCK'
,p_display_name=>'Block'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--featured t-Cards--block force-fa-lg'
,p_group_id=>wwv_flow_api.id(22846480236407735)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22857429039407743)
,p_theme_id=>42
,p_name=>'CARDS_STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--stacked'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
,p_help_text=>'Stacks the cards on top of each other.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22857825488407743)
,p_theme_id=>42
,p_name=>'COLOR_FILL'
,p_display_name=>'Color Fill'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--animColorFill'
,p_group_id=>wwv_flow_api.id(22857627319407743)
,p_template_types=>'LIST'
,p_help_text=>'Fills the card background with the color of the icon or default link style.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22858065784407743)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(22846480236407735)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22858460799407743)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(22858292517407743)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22858628174407743)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(22858292517407743)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22858877110407743)
,p_theme_id=>42
,p_name=>'DISPLAY_SUBTITLE'
,p_display_name=>'Display Subtitle'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--displaySubtitle'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22859066720407743)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--featured force-fa-lg'
,p_group_id=>wwv_flow_api.id(22846480236407735)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22859288832407745)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22859471332407745)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(22855668159407742)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22859664692407745)
,p_theme_id=>42
,p_name=>'ICONS_ROUNDED'
,p_display_name=>'Rounded Corners'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--iconsRounded'
,p_group_id=>wwv_flow_api.id(22850220934407739)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square with rounded corners.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22859862479407745)
,p_theme_id=>42
,p_name=>'ICONS_SQUARE'
,p_display_name=>'Square'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--iconsSquare'
,p_group_id=>wwv_flow_api.id(22850220934407739)
,p_template_types=>'LIST'
,p_help_text=>'The icons are displayed within a square shape.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22860084057407745)
,p_theme_id=>42
,p_name=>'RAISE_CARD'
,p_display_name=>'Raise Card'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--animRaiseCard'
,p_group_id=>wwv_flow_api.id(22857627319407743)
,p_template_types=>'LIST'
,p_help_text=>'Raises the card so it pops up.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22860253559407745)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22860430365407745)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Apply Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_css_classes=>'u-colors'
,p_template_types=>'LIST'
,p_help_text=>'Applies the colors from the theme''s color palette to the icons or initials within cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22860883354407745)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22860544374407745)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(22858292517407743)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22861059950407745)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(22860544374407745)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(22845254732407735)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22861270024407745)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22860544374407745)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(22858292517407743)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22861460783407745)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22860544374407745)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(22850869559407739)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22861678372407745)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22860544374407745)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(22846480236407735)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22861805850407745)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22860544374407745)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(22846480236407735)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22862064245407746)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(22860544374407745)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(22850869559407739)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22862467898407746)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22862157042407746)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Enables you to define a keyboard shortcut to activate the menu item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22862602008407746)
,p_theme_id=>42
,p_name=>'DISPLAY_MENU_CALLOUT'
,p_display_name=>'Display Menu Callout'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22862157042407746)
,p_css_classes=>'js-menu-callout'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add display a callout for the menu. Note that callout will only be displayed if the data-parent-element custom attribute is defined.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22863023647407746)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22862749873407746)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(22846480236407735)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22863242581407746)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(22862749873407746)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22863433006407746)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22862749873407746)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22863691745407746)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22862749873407746)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22864042235407746)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(22862749873407746)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(22863873269407746)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22864297833407746)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(22862749873407746)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(22863873269407746)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22865452261407750)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(22865062901407750)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(22865265745407750)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22865661670407750)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(22865062901407750)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(22865265745407750)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22866016720407750)
,p_theme_id=>42
,p_name=>'HIDE_LABEL_ON_MOBILE'
,p_display_name=>'Hide Label on Mobile'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(22865817769407750)
,p_css_classes=>'t-Button--mobileHideLabel'
,p_template_types=>'BUTTON'
,p_help_text=>'This template options hides the button label on small screens.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22866470606407751)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(22865817769407750)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(22866243366407751)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22866640250407751)
,p_theme_id=>42
,p_name=>'PUSH'
,p_display_name=>'Push'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(22865817769407750)
,p_css_classes=>'t-Button--hoverIconPush'
,p_group_id=>wwv_flow_api.id(22865265745407750)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will animate to the right or left on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22866872541407751)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(22865817769407750)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(22866243366407751)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22867059684407751)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(22865817769407750)
,p_css_classes=>'t-Button--hoverIconSpin'
,p_group_id=>wwv_flow_api.id(22865265745407750)
,p_template_types=>'BUTTON'
,p_help_text=>'The icon will spin on button hover or focus.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22868962706407762)
,p_theme_id=>42
,p_name=>'FBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(22868777581407762)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22869348012407762)
,p_theme_id=>42
,p_name=>'RBM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-bottom-lg'
,p_group_id=>wwv_flow_api.id(22869150082407762)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22869576920407762)
,p_theme_id=>42
,p_name=>'FBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(22868777581407762)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22869734189407762)
,p_theme_id=>42
,p_name=>'RBM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-bottom-md'
,p_group_id=>wwv_flow_api.id(22869150082407762)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22869993885407764)
,p_theme_id=>42
,p_name=>'FBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(22868777581407762)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22870115457407764)
,p_theme_id=>42
,p_name=>'RBM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-bottom-none'
,p_group_id=>wwv_flow_api.id(22869150082407762)
,p_template_types=>'REGION'
,p_help_text=>'Removes the bottom margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22870392995407764)
,p_theme_id=>42
,p_name=>'FBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(22868777581407762)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small bottom margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22870583779407764)
,p_theme_id=>42
,p_name=>'RBM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-bottom-sm'
,p_group_id=>wwv_flow_api.id(22869150082407762)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small bottom margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22870943112407764)
,p_theme_id=>42
,p_name=>'FLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(22870794229407764)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22871356047407764)
,p_theme_id=>42
,p_name=>'RLM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-left-lg'
,p_group_id=>wwv_flow_api.id(22871106615407764)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22871533306407764)
,p_theme_id=>42
,p_name=>'FLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(22870794229407764)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22871759159407764)
,p_theme_id=>42
,p_name=>'RLM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-left-md'
,p_group_id=>wwv_flow_api.id(22871106615407764)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22871922739407764)
,p_theme_id=>42
,p_name=>'FLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(22870794229407764)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22872191491407764)
,p_theme_id=>42
,p_name=>'RLM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-left-none'
,p_group_id=>wwv_flow_api.id(22871106615407764)
,p_template_types=>'REGION'
,p_help_text=>'Removes the left margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22872339285407764)
,p_theme_id=>42
,p_name=>'FLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(22870794229407764)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small left margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22872551371407765)
,p_theme_id=>42
,p_name=>'RLM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-left-sm'
,p_group_id=>wwv_flow_api.id(22871106615407764)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small left margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22872949614407765)
,p_theme_id=>42
,p_name=>'FRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(22872736378407765)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22873375675407765)
,p_theme_id=>42
,p_name=>'RRM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-right-lg'
,p_group_id=>wwv_flow_api.id(22873182925407765)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22873591248407765)
,p_theme_id=>42
,p_name=>'FRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(22872736378407765)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22873714304407765)
,p_theme_id=>42
,p_name=>'RRM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-right-md'
,p_group_id=>wwv_flow_api.id(22873182925407765)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22873979209407765)
,p_theme_id=>42
,p_name=>'FRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(22872736378407765)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22874159061407765)
,p_theme_id=>42
,p_name=>'RRM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-right-none'
,p_group_id=>wwv_flow_api.id(22873182925407765)
,p_template_types=>'REGION'
,p_help_text=>'Removes the right margin from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22874358250407765)
,p_theme_id=>42
,p_name=>'FRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(22872736378407765)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small right margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22874537115407765)
,p_theme_id=>42
,p_name=>'RRM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-right-sm'
,p_group_id=>wwv_flow_api.id(22873182925407765)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small right margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22874923554407765)
,p_theme_id=>42
,p_name=>'FTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(22874749350407765)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a large top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22875364808407765)
,p_theme_id=>42
,p_name=>'RTM_LARGE'
,p_display_name=>'Large'
,p_display_sequence=>40
,p_css_classes=>'margin-top-lg'
,p_group_id=>wwv_flow_api.id(22875161148407765)
,p_template_types=>'REGION'
,p_help_text=>'Adds a large top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22875524975407765)
,p_theme_id=>42
,p_name=>'FTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(22874749350407765)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a medium top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22875763339407767)
,p_theme_id=>42
,p_name=>'RTM_MEDIUM'
,p_display_name=>'Medium'
,p_display_sequence=>30
,p_css_classes=>'margin-top-md'
,p_group_id=>wwv_flow_api.id(22875161148407765)
,p_template_types=>'REGION'
,p_help_text=>'Adds a medium top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22875997883407767)
,p_theme_id=>42
,p_name=>'FTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(22874749350407765)
,p_template_types=>'FIELD'
,p_help_text=>'Removes the top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22876163405407767)
,p_theme_id=>42
,p_name=>'RTM_NONE'
,p_display_name=>'None'
,p_display_sequence=>10
,p_css_classes=>'margin-top-none'
,p_group_id=>wwv_flow_api.id(22875161148407765)
,p_template_types=>'REGION'
,p_help_text=>'Removes the top margin for this region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22876323600407767)
,p_theme_id=>42
,p_name=>'FTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(22874749350407765)
,p_template_types=>'FIELD'
,p_help_text=>'Adds a small top margin for this field.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22876509125407767)
,p_theme_id=>42
,p_name=>'RTM_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'margin-top-sm'
,p_group_id=>wwv_flow_api.id(22875161148407765)
,p_template_types=>'REGION'
,p_help_text=>'Adds a small top margin to the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22876938619407767)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(22876703665407767)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22877323380407767)
,p_theme_id=>42
,p_name=>'LARGEBOTTOMMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapBottom'
,p_group_id=>wwv_flow_api.id(22877158272407767)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22877782493407767)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(22877566928407767)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22878112306407767)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(22877903617407767)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22878583891407767)
,p_theme_id=>42
,p_name=>'LARGETOPMARGIN'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapTop'
,p_group_id=>wwv_flow_api.id(22878394981407767)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22878951697407768)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>30
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(22878768907407767)
,p_template_types=>'BUTTON'
,p_help_text=>'A large button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22879325261407768)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_LINK'
,p_display_name=>'Display as Link'
,p_display_sequence=>30
,p_css_classes=>'t-Button--link'
,p_group_id=>wwv_flow_api.id(22879140374407768)
,p_template_types=>'BUTTON'
,p_help_text=>'This option makes the button appear as a text link.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22879534594407768)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(22879140374407768)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22879723025407768)
,p_theme_id=>42
,p_name=>'SMALLBOTTOMMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padBottom'
,p_group_id=>wwv_flow_api.id(22877158272407767)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22879983151407768)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(22877566928407767)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22880149067407768)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(22877903617407767)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22880378671407768)
,p_theme_id=>42
,p_name=>'SMALLTOPMARGIN'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padTop'
,p_group_id=>wwv_flow_api.id(22878394981407767)
,p_template_types=>'BUTTON'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22880788969407768)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(22880589294407768)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22880945613407768)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(22880589294407768)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22881154660407768)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(22880589294407768)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22881306789407768)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(22876703665407767)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22881579749407768)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(22879140374407768)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22881746289407768)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>20
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(22878768907407767)
,p_template_types=>'BUTTON'
,p_help_text=>'A small button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22882165899407770)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(22881942841407768)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22882338560407770)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(22876703665407767)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22882597205407770)
,p_theme_id=>42
,p_name=>'TINY'
,p_display_name=>'Tiny'
,p_display_sequence=>10
,p_css_classes=>'t-Button--tiny'
,p_group_id=>wwv_flow_api.id(22878768907407767)
,p_template_types=>'BUTTON'
,p_help_text=>'A very small button.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22882720721407770)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(22876703665407767)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22883157113407770)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(22882928852407770)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22883560373407770)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(22883393355407770)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22883941454407770)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(22883719723407770)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22884364915407770)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(22884195197407770)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22884526300407770)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(22884195197407770)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22884914667407771)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(22884728416407770)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22885197765407771)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(22883393355407770)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22885557553407771)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(22885356100407771)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22885912850407771)
,p_theme_id=>42
,p_name=>'POST_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--postTextBlock'
,p_group_id=>wwv_flow_api.id(22885765955407771)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Post Text in a block style immediately after the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22886324994407771)
,p_theme_id=>42
,p_name=>'PRE_TEXT_BLOCK'
,p_display_name=>'Display as Block'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--preTextBlock'
,p_group_id=>wwv_flow_api.id(22886175734407771)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the Item Pre Text in a block style immediately before the item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22886781852407771)
,p_theme_id=>42
,p_name=>'DISPLAY_AS_PILL_BUTTON'
,p_display_name=>'Display as Pill Button'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--radioButtonGroup'
,p_group_id=>wwv_flow_api.id(22886544914407771)
,p_template_types=>'FIELD'
,p_help_text=>'Displays the radio buttons to look like a button set / pill button.  Note that the the radio buttons must all be in the same row for this option to work.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22886962315407771)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22887147615407771)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(22885356100407771)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(22887582180407771)
,p_theme_id=>42
,p_name=>'HIDE_WHEN_ALL_ROWS_DISPLAYED'
,p_display_name=>'Hide when all rows displayed'
,p_display_sequence=>10
,p_css_classes=>'t-Report--hideNoPagination'
,p_group_id=>wwv_flow_api.id(22887310322407771)
,p_template_types=>'REPORT'
,p_help_text=>'This option will hide the pagination when all rows are displayed.'
);
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts/delete_confirm_msg
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(22891097630407785)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications/application_express_authentication
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(22750779399407664)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(22888291314407775)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_api.id(22751556794407665)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(22851954945407739)
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_css_file_urls=>'#APP_IMAGES#app-icon.css?version=#APP_VERSION#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(22887946982407773)
,p_nav_bar_list_template_id=>wwv_flow_api.id(22854759522407742)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_api.create_page(
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201134314'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_api.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'POlICOMERCE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201134314'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22898942746407809)
,p_plug_name=>'POlICOMERCE'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(22795414839407700)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22909845191407829)
,p_plug_name=>'Page Navigation'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(22777617594407689)
,p_plug_display_sequence=>30
,p_plug_display_point=>'BODY'
,p_list_id=>wwv_flow_api.id(22907509141407828)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_api.id(22855108368407742)
,p_plug_query_num_rows=>15
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_api.create_page(
 p_id=>3
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'SERVICIOS'
,p_step_title=>'SERVICIOS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201134314'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22901990780407814)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22814497036407714)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(22751040862407665)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(22867135316407751)
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_api.create_page(
 p_id=>5
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Articulos'
,p_step_title=>'Articulos'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>wwv_flow_api.id(22760223370407676)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201220639'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17393463408517626)
,p_plug_name=>'Articulos'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(22795414839407700)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17394661186517628)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(22777617594407689)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(17395451591517628)
,p_name=>'Master Records'
,p_template=>wwv_flow_api.id(22777800340407689)
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID_ARTICULO",',
'    null link_class,',
'    apex_page.get_url(p_items => ''P5_ID_ARTICULO'', p_values => "ID_ARTICULO") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P5_ID_ARTICULO,''0'') = "ID_ARTICULO"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("NOMBRE_ARTICULO", 1, 50)||( case when length("NOMBRE_ARTICULO") > 50 then ''...'' end ) list_title,',
'    substr("DESCRIPCION_ARTICULO", 1, 50)||( case when length("DESCRIPCION_ARTICULO") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'from "ARTICULOS" x',
'where (:P5_SEARCH is null',
'        or upper(x."NOMBRE_ARTICULO") like ''%''||upper(:P5_SEARCH)||''%''',
'        or upper(x."DESCRIPCION_ARTICULO") like ''%''||upper(:P5_SEARCH)||''%''',
'    )',
'order by "NOMBRE_ARTICULO"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P5_SEARCH'
,p_query_row_template=>wwv_flow_api.id(22820532286407718)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No Records Found</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17396196883517640)
,p_query_column_id=>1
,p_column_alias=>'ID_ARTICULO'
,p_column_display_sequence=>1
,p_column_heading=>'Id Articulo'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17396535931517640)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'Link Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17396946671517642)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Link'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17397395756517642)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Icon Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17397724980517643)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'Link Attr'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17398195451517643)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'Icon Color Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17398525045517643)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'List Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17398995098517643)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'List Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17399362023517643)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'List Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17399715527517645)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'List Badge'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(17403430051517650)
,p_name=>'Articulos'
,p_template=>wwv_flow_api.id(22805024331407707)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_column=>3
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'ARTICULOS'
,p_query_where=>'"ID_ARTICULO" = :P5_ID_ARTICULO'
,p_include_rowid_column=>false
,p_display_when_condition=>'P5_ID_ARTICULO'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(22825931245407721)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17404152010517651)
,p_query_column_id=>1
,p_column_alias=>'ID_ARTICULO'
,p_column_display_sequence=>1
,p_column_heading=>'Id Articulo'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ARTICULOS"',
'where "ID_ARTICULO" is not null',
'and "ID_ARTICULO" = :P5_ID_ARTICULO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17404530844517651)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE_ARTICULO'
,p_column_display_sequence=>2
,p_column_heading=>'Nombre Articulo'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ARTICULOS"',
'where "NOMBRE_ARTICULO" is not null',
'and "ID_ARTICULO" = :P5_ID_ARTICULO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17404951024517651)
,p_query_column_id=>3
,p_column_alias=>'PRECIO_ARTICULO'
,p_column_display_sequence=>3
,p_column_heading=>'Precio Articulo'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ARTICULOS"',
'where "PRECIO_ARTICULO" is not null',
'and "ID_ARTICULO" = :P5_ID_ARTICULO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17405399169517651)
,p_query_column_id=>4
,p_column_alias=>'IMAGEN_ARTICULO'
,p_column_display_sequence=>4
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ARTICULOS"',
'where "IMAGEN_ARTICULO" is not null',
'and "ID_ARTICULO" = :P5_ID_ARTICULO'))
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17405736904517651)
,p_query_column_id=>5
,p_column_alias=>'DESCRIPCION_ARTICULO'
,p_column_display_sequence=>5
,p_column_heading=>'Descripcion Articulo'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ARTICULOS"',
'where "DESCRIPCION_ARTICULO" is not null',
'and "ID_ARTICULO" = :P5_ID_ARTICULO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17406126081517651)
,p_query_column_id=>6
,p_column_alias=>'ID_CATEGORIA_ARTICULO'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ARTICULOS"',
'where "ID_CATEGORIA_ARTICULO" is not null',
'and "ID_ARTICULO" = :P5_ID_ARTICULO'))
,p_derived_column=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17410813295517654)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>wwv_flow_api.id(22777617594407689)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>3
,p_plug_display_point=>'BODY'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P5_ID_ARTICULO'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(17411265916517654)
,p_name=>'Detalle Pedido'
,p_template=>wwv_flow_api.id(22805024331407707)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_column=>3
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'DETALLE_PEDIDO'
,p_query_where=>'"ID_ARTICULO_DETALLE" = :P5_ID_ARTICULO'
,p_include_rowid_column=>false
,p_display_when_condition=>'P5_ID_ARTICULO'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(22831338776407725)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17412409637517656)
,p_query_column_id=>1
,p_column_alias=>'ID_PEDIDO_DETALLE'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
,p_ref_table_name=>'PEDIDO'
,p_ref_column_name=>'ID_PEDIDO'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17412868804517656)
,p_query_column_id=>2
,p_column_alias=>'ID_ARTICULO_DETALLE'
,p_column_display_sequence=>2
,p_column_heading=>'ID'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17413289234517656)
,p_query_column_id=>3
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>3
,p_column_heading=>'Cantidad'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17413622769517656)
,p_query_column_id=>4
,p_column_alias=>'TOTAL_ARTICULO'
,p_column_display_sequence=>4
,p_column_heading=>'Total Articulo'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17426956139517698)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22777617594407689)
,p_plug_display_sequence=>70
,p_plug_display_column=>3
,p_plug_display_point=>'BODY'
,p_plug_source=>'No Record Selected'
,p_plug_query_num_rows=>15
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P5_ID_ARTICULO'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17416250665517657)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17411265916517654)
,p_button_name=>'POP_DETALLE_PEDIDO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(22865062901407750)
,p_button_image_alt=>'Add Detalle Pedido'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:RP,17:P17_ID_ARTICULO_DETALLE:&P5_ID_ARTICULO.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17427425463517698)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17403430051517650)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(22865817769407750)
,p_button_image_alt=>'Edit'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7:P7_ID_ARTICULO:&P5_ID_ARTICULO.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17393920019517626)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17393463408517626)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(22865817769407750)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.:RESET:&DEBUG.:RP,5::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17394346467517628)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17393463408517626)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(22865817769407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:RP,7::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17395096729517628)
,p_name=>'P5_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17394661186517628)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(22864393233407746)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17410432215517654)
,p_name=>'P5_ID_ARTICULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17403430051517650)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17427718641517700)
,p_name=>'Edit Master Record'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(17403430051517650)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17428380951517700)
,p_event_id=>wwv_flow_api.id(17427718641517700)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17403430051517650)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17428810878517700)
,p_event_id=>wwv_flow_api.id(17427718641517700)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Articulos\u0020updated'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17411374717517654)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(17411265916517654)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17416990201517657)
,p_event_id=>wwv_flow_api.id(17411374717517654)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17411265916517654)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17417404319517657)
,p_event_id=>wwv_flow_api.id(17411374717517654)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Detalle Pedido updated'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17427814318517700)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P5_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17429657196517700)
,p_event_id=>wwv_flow_api.id(17427814318517700)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17395451591517628)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17430122044517701)
,p_event_id=>wwv_flow_api.id(17427814318517700)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_api.create_page(
 p_id=>6
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'OTROS'
,p_step_title=>'OTROS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201134314'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22906740393407818)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22814497036407714)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(22751040862407665)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(22867135316407751)
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_api.create_page(
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Categorias'
,p_page_mode=>'MODAL'
,p_step_title=>'Categorias'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201134703'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22911820561414767)
,p_plug_name=>'Categorias'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22777617594407689)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'VW_PRODUCTOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22916426291414771)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22778612489407690)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22916891094414771)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22916426291414771)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22918472979414773)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22916426291414771)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P8_CODIGO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22918891888414773)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22916426291414771)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P8_CODIGO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22919249760414773)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22916426291414771)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P8_CODIGO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22912205562414767)
,p_name=>'P8_CODIGO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22911820561414767)
,p_item_source_plug_id=>wwv_flow_api.id(22911820561414767)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Codigo'
,p_source=>'CODIGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864657504407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22912617697414770)
,p_name=>'P8_IMAGEN'
,p_source_data_type=>'BLOB'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22911820561414767)
,p_item_source_plug_id=>wwv_flow_api.id(22911820561414767)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Imagen'
,p_source=>'IMAGEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22913071687414770)
,p_name=>'P8_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22911820561414767)
,p_item_source_plug_id=>wwv_flow_api.id(22911820561414767)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22913480095414770)
,p_name=>'P8_PRECIO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(22911820561414767)
,p_item_source_plug_id=>wwv_flow_api.id(22911820561414767)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Precio'
,p_source=>'PRECIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22913824109414770)
,p_name=>'P8_DESCIPCION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(22911820561414767)
,p_item_source_plug_id=>wwv_flow_api.id(22911820561414767)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descipcion'
,p_source=>'DESCIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22914295392414770)
,p_name=>'P8_CATEGORIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(22911820561414767)
,p_item_source_plug_id=>wwv_flow_api.id(22911820561414767)
,p_prompt=>'Categoria'
,p_source=>'CATEGORIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORIAS.PRODUCTO'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22916968722414771)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22916891094414771)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22917708344414771)
,p_event_id=>wwv_flow_api.id(22916968722414771)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22920099450414773)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(22911820561414767)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Categorias'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22920417868414773)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22919670189414773)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(22911820561414767)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Categorias'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_api.create_page(
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Clientes'
,p_step_title=>'Clientes'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201135009'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22936840681440209)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22803190075407707)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'select "CODIGO",sys.dbms_lob.getlength("IMAGEN")"IMAGEN","NOMBRE","PRECIO","DESCRIPCION","CATEGORIA"from "VW_SERVICIOS"'
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22937203785440209)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:RP:P10_CODIGO:\#CODIGO#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'POLICOMERCE'
,p_internal_uid=>22937203785440209
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22937341510440209)
,p_db_column_name=>'CODIGO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Codigo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22937779361440209)
,p_db_column_name=>'IMAGEN'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Imagen'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'IMAGE:VW_SERVICIOS:IMAGEN:CODIGO::::::::'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22938171278440209)
,p_db_column_name=>'NOMBRE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22938561688440209)
,p_db_column_name=>'PRECIO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Precio'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22938974532440209)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22939381655440210)
,p_db_column_name=>'CATEGORIA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Categoria'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(22942684154445621)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22942024129442475)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'229421'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODIGO:IMAGEN:NOMBRE:PRECIO:DESCRIPCION:CATEGORIA'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22941406784440212)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22936840681440209)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22940488908440212)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(22936840681440209)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22940977171440212)
,p_event_id=>wwv_flow_api.id(22940488908440212)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(22936840681440209)
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_api.create_page(
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Clientes'
,p_page_mode=>'MODAL'
,p_step_title=>'Clientes'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201135051'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22927698915440203)
,p_plug_name=>'Clientes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22777617594407689)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'VW_SERVICIOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22932264045440206)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22778612489407690)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22932687905440206)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22932264045440206)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22934279655440207)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22932264045440206)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P10_CODIGO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22934613501440207)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22932264045440206)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10_CODIGO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22935075851440207)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22932264045440206)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P10_CODIGO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22928071050440204)
,p_name=>'P10_CODIGO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22927698915440203)
,p_item_source_plug_id=>wwv_flow_api.id(22927698915440203)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Codigo'
,p_source=>'CODIGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864657504407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22928478137440204)
,p_name=>'P10_IMAGEN'
,p_source_data_type=>'BLOB'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22927698915440203)
,p_item_source_plug_id=>wwv_flow_api.id(22927698915440203)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Imagen'
,p_source=>'IMAGEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22928806529440204)
,p_name=>'P10_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22927698915440203)
,p_item_source_plug_id=>wwv_flow_api.id(22927698915440203)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22929221804440204)
,p_name=>'P10_PRECIO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(22927698915440203)
,p_item_source_plug_id=>wwv_flow_api.id(22927698915440203)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Precio'
,p_source=>'PRECIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22929695271440204)
,p_name=>'P10_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(22927698915440203)
,p_item_source_plug_id=>wwv_flow_api.id(22927698915440203)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22930085421440204)
,p_name=>'P10_CATEGORIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(22927698915440203)
,p_item_source_plug_id=>wwv_flow_api.id(22927698915440203)
,p_prompt=>'Categoria'
,p_source=>'CATEGORIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CATEGORIAS.SERVICIOS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22932746437440206)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22932687905440206)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22933588726440206)
,p_event_id=>wwv_flow_api.id(22932746437440206)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22935835462440207)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(22927698915440203)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Clientes'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22936271855440207)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22935466146440207)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(22927698915440203)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Clientes'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_api.create_page(
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Categorias'
,p_step_title=>'Categorias'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201135229'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22950074199462862)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22803190075407707)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'VW_CATEGORIAS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22950498052462862)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:RP:P12_ID:\#ID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'POLICOMERCE'
,p_internal_uid=>22950498052462862
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22950536150462862)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22950914853462864)
,p_db_column_name=>'CODIGO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Codigo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22951398731462864)
,p_db_column_name=>'NOMBRE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nombre'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22951765904462864)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22953357716463371)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'229534'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:CODIGO:NOMBRE:DESCRIPCION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22952938981462865)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22950074199462862)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12'
);
end;
/
prompt --application/pages/page_00012
begin
wwv_flow_api.create_page(
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Categorias'
,p_step_title=>'Categorias'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201135224'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22943408403462857)
,p_plug_name=>'Categorias'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(22805024331407707)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'VW_CATEGORIAS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22947807352462860)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22943408403462857)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P12_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22946691507462860)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22943408403462857)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22948201430462860)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22943408403462857)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P12_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22947440315462860)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22943408403462857)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P12_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(22948518137462860)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22943823513462859)
,p_name=>'P12_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22943408403462857)
,p_item_source_plug_id=>wwv_flow_api.id(22943408403462857)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id'
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864657504407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22944296787462859)
,p_name=>'P12_CODIGO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22943408403462857)
,p_item_source_plug_id=>wwv_flow_api.id(22943408403462857)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Codigo'
,p_source=>'CODIGO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>3
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22944639727462859)
,p_name=>'P12_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22943408403462857)
,p_item_source_plug_id=>wwv_flow_api.id(22943408403462857)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22945055694462859)
,p_name=>'P12_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(22943408403462857)
,p_item_source_plug_id=>wwv_flow_api.id(22943408403462857)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22949414029462862)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(22943408403462857)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Categorias'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22949023683462862)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(22943408403462857)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Categorias'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_api.create_page(
 p_id=>13
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Roles'
,p_step_title=>'Roles'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201213613'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22961265904512632)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22803190075407707)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'VW_ROLES'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(22961693229512632)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:RP:P14_CODICO:\#CODICO#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'POLICOMERCE'
,p_internal_uid=>22961693229512632
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22961709043512632)
,p_db_column_name=>'CODICO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Codigo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22962137638512632)
,p_db_column_name=>'TIPO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Tipo'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(22962573855512632)
,p_db_column_name=>'DESCRIPCION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Descripcion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22965077873513500)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'229651'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CODICO:TIPO:DESCRIPCION'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22964674604512635)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22961265904512632)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22963624000512634)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(22961265904512632)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22964111961512635)
,p_event_id=>wwv_flow_api.id(22963624000512634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(22961265904512632)
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_api.create_page(
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Roles'
,p_page_mode=>'MODAL'
,p_step_title=>'Roles'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201140042'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22954108495512621)
,p_plug_name=>'Roles'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22777617594407689)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'VW_ROLES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22956610428512626)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22778612489407690)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22957075726512626)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(22956610428512626)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22958695722512631)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(22956610428512626)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P14_CODICO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22959079179512631)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(22956610428512626)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P14_CODICO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22959408861512631)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22956610428512626)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P14_CODICO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22954523936512625)
,p_name=>'P14_CODICO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22954108495512621)
,p_item_source_plug_id=>wwv_flow_api.id(22954108495512621)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Codico'
,p_source=>'CODICO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864657504407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22954963488512626)
,p_name=>'P14_TIPO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22954108495512621)
,p_item_source_plug_id=>wwv_flow_api.id(22954108495512621)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Tipo'
,p_source=>'TIPO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22955304009512626)
,p_name=>'P14_DESCRIPCION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22954108495512621)
,p_item_source_plug_id=>wwv_flow_api.id(22954108495512621)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion'
,p_source=>'DESCRIPCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(22957190339512626)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(22957075726512626)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(22957966168512628)
,p_event_id=>wwv_flow_api.id(22957190339512626)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22960224878512631)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(22954108495512621)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Roles'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22960653510512631)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22959896915512631)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(22954108495512621)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Roles'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_api.create_page(
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Usuarios'
,p_step_title=>'Usuarios'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201210032'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(33199425652658056)
,p_name=>'Usuarios'
,p_template=>wwv_flow_api.id(22777800340407689)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--basic:t-Cards--displayInitials:t-Cards--3cols:t-Cards--animColorFill:t-Report--hideNoPagination'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  "NOMBRE_USUARIO" CARD_TITLE,',
'  "EMAIL" CARD_TEXT,',
'  "ID_PERSONA_USUARIO" CARD_SUBTEXT,',
'  apex_string.get_initials("NOMBRE_USUARIO") CARD_INITIALS,',
'  apex_util.prepare_url( ''f?p=''||:APP_ID||'':16:''||:APP_SESSION||''::::P16_ID_PERSONA:''||id_persona_usuario )',
'CARD_LINK,',
'  null CARD_MODIFIERS,',
'  null CARD_COLOR,',
'  null CARD_ICON',
'from  "USUARIOS"'))
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(22835394100407728)
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17327860077441939)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'CARD_TITLE'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17328266507441939)
,p_query_column_id=>2
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>2
,p_column_heading=>'CARD_TEXT'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17328680541441940)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>3
,p_column_heading=>'CARD_SUBTEXT'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_api.id(17331622926441946)
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17329092457441940)
,p_query_column_id=>4
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>4
,p_column_heading=>'CARD_INITIALS'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17329462312441940)
,p_query_column_id=>5
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>5
,p_column_heading=>'CARD_LINK'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17329841132441940)
,p_query_column_id=>6
,p_column_alias=>'CARD_MODIFIERS'
,p_column_display_sequence=>6
,p_column_heading=>'CARD_MODIFIERS'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17330258492441940)
,p_query_column_id=>7
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>7
,p_column_heading=>'CARD_COLOR'
,p_include_in_export=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17330609654441940)
,p_query_column_id=>8
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>8
,p_column_heading=>'CARD_ICON'
,p_include_in_export=>'N'
);
end;
/
prompt --application/pages/page_00016
begin
wwv_flow_api.create_page(
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Datos Usuario'
,p_step_title=>'Datos Usuario'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201210818'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33537199936610972)
,p_plug_name=>'Detalle Usuario'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(22805024331407707)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'VW_DETALLE_USUARIO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34412449846800200)
,p_plug_name=>'Datos de Perfil'
,p_parent_plug_id=>wwv_flow_api.id(33537199936610972)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(22805024331407707)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(34412542794800201)
,p_plug_name=>'Domicilio'
,p_parent_plug_id=>wwv_flow_api.id(33537199936610972)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(22805024331407707)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17333974504450398)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33537199936610972)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P16_ID_PERSONA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17333594957450398)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33537199936610972)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17334330398450398)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(33537199936610972)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P16_ID_PERSONA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17348982300450407)
,p_branch_name=>'Go To Page 2'
,p_branch_action=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(17333974504450398)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17334706936450398)
,p_name=>'P16_ID_PERSONA'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33537199936610972)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_source=>'ID_PERSONA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17335145481450400)
,p_name=>'P16_PRIMER_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33537199936610972)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_prompt=>'Primer Nombre'
,p_source=>'PRIMER_NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>150
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17335504538450400)
,p_name=>'P16_SEGUNDO_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(33537199936610972)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_prompt=>'Segundo Nombre'
,p_source=>'SEGUNDO_NOMBRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>150
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17335962320450400)
,p_name=>'P16_PRIMER_APELLIDO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(33537199936610972)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_prompt=>'Primer Apellido'
,p_source=>'PRIMER_APELLIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>150
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17336358327450400)
,p_name=>'P16_SEGUNDO_APELLIDO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(33537199936610972)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_prompt=>'Segundo Apellido'
,p_source=>'SEGUNDO_APELLIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>150
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17336790984450400)
,p_name=>'P16_TELEFONO_PERSONA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(33537199936610972)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_prompt=>'Telefono Persona'
,p_source=>'TELEFONO_PERSONA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17337115685450400)
,p_name=>'P16_EDAD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(33537199936610972)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_prompt=>'Edad'
,p_source=>'EDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17337574357450400)
,p_name=>'P16_GENERO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(33537199936610972)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_item_default=>'P16_GENERO'
,p_item_default_type=>'ITEM'
,p_prompt=>'Genero'
,p_source=>'GENERO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Masculino;M,Femenino;F'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17339070462450401)
,p_name=>'P16_ID_DIRECCION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(34412542794800201)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_source=>'ID_DIRECCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17339499930450401)
,p_name=>'P16_DIRECCION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(34412542794800201)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_prompt=>'Direccion'
,p_source=>'DIRECCION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>200
,p_cHeight=>3
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17339819908450401)
,p_name=>'P16_ID_DEPARTAMENTO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(34412542794800201)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_source=>'ID_DEPARTAMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17340266320450401)
,p_name=>'P16_NOMBRE_DEPARTAMENTO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(34412542794800201)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_prompt=>'Nombre Departamento'
,p_source=>'NOMBRE_DEPARTAMENTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17340629003450401)
,p_name=>'P16_ID_MUNICIPIOS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(34412542794800201)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_source=>'ID_MUNICIPIOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17341030508450403)
,p_name=>'P16_NOMBRE_MUNICIPIOS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(34412542794800201)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_prompt=>'Nombre Municipios'
,p_source=>'NOMBRE_MUNICIPIOS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17341727512450403)
,p_name=>'P16_ID_USUARIO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(34412449846800200)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_source=>'ID_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17342189326450403)
,p_name=>'P16_EMAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(34412449846800200)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_prompt=>'Email'
,p_source=>'EMAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17342515014450403)
,p_name=>'P16_NOMBRE_USUARIO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(34412449846800200)
,p_item_source_plug_id=>wwv_flow_api.id(33537199936610972)
,p_prompt=>'Nombre Usuario'
,p_source=>'NOMBRE_USUARIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17347948234450406)
,p_name=>'UPDATE_DETALLE_USUARIO_BY_ID'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(17333974504450398)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17348464312450407)
,p_event_id=>wwv_flow_api.id(17347948234450406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SP_ACTUALIZAR_DETALLE_USUARIO(:P16_PRIMER_NOMBRE,',
'                              :P16_SEGUNDO_NOMBRE,',
'                              :P16_PRIMER_APELLIDO,',
'                              :P16_SEGUNDO_APELLIDO,',
'                              :P16_EDAD,',
'                              :P16_GENERO,',
'                              :P16_TELEFONO_PERSONA,',
'                              :P16_NOMBRE_USUARIO,',
'                              :P16_EMAIL,',
'                              :P16_DIRECCION,',
'                              :P16_NOMBRE_DEPARTAMENTO,',
'                              :P16_NOMBRE_MUNICIPIOS,',
'                              :P16_ID_USUARIO,',
'                              :P16_ID_PERSONA,',
'                              :P16_ID_DIRECCION,',
'                              :P16_ID_DEPARTAMENTO,',
'                              :P16_ID_MUNICIPIOS);',
''))
,p_attribute_02=>'P16_ID_PERSONA,P16_PRIMER_NOMBRE,P16_SEGUNDO_NOMBRE,P16_PRIMER_APELLIDO,P16_SEGUNDO_APELLIDO,P16_TELEFONO_PERSONA,P16_EDAD,P16_GENERO,P16_ID_USUARIO,P16_EMAIL,P16_NOMBRE_USUARIO,P16_ID_DIRECCION,P16_DIRECCION,P16_ID_DEPARTAMENTO,P16_NOMBRE_DEPARTAMEN'
||'TO,P16_ID_MUNICIPIOS,P16_NOMBRE_MUNICIPIOS'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17080583553349814)
,p_event_id=>wwv_flow_api.id(17347948234450406)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17338366961450401)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(33537199936610972)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Reporte Usuario'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17337900250450400)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(33537199936610972)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Reporte Usuario'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_api.create_page(
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Pedidos'
,p_step_title=>'Pedidos'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201213716'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17465026617551925)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22803190075407707)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'PEDIDO'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(17465439898551925)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLS:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:RP:P22_ID_PEDIDO:\#ID_PEDIDO#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'POLICOMERCE'
,p_internal_uid=>17465439898551925
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17465599792551925)
,p_db_column_name=>'ID_PEDIDO'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'Id Pedido'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17465928585551925)
,p_db_column_name=>'FECHA_PEDIDO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fecha Pedido'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17466386644551925)
,p_db_column_name=>'FECHA_ENVIO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Fecha Envio'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17466777896551925)
,p_db_column_name=>'MONTO_TOTAL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Monto Total'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17467168373551926)
,p_db_column_name=>'ID_ESTADO_PEDIDO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Estado Pedido'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(17437601413532137)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17467513392551926)
,p_db_column_name=>'ID_USUARIO_PEDIDO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Usuario'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(17331622926441946)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17470033676552275)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'174701'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_PEDIDO:FECHA_PEDIDO:FECHA_ENVIO:MONTO_TOTAL:ID_ESTADO_PEDIDO:ID_USUARIO_PEDIDO'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17469618770551928)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(17465026617551925)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17468661351551926)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(17465026617551925)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17469187166551928)
,p_event_id=>wwv_flow_api.id(17468661351551926)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17465026617551925)
);
end;
/
prompt --application/pages/page_00022
begin
wwv_flow_api.create_page(
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Formulario Pedidos'
,p_page_mode=>'MODAL'
,p_step_title=>'Formulario Pedidos'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201211318'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17455924246551901)
,p_plug_name=>'Formulario Pedidos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22777617594407689)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'PEDIDO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17460410768551915)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22778612489407690)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17460883151551915)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17460410768551915)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17462477826551917)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17460410768551915)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P22_ID_PEDIDO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17462887471551917)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(17460410768551915)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P22_ID_PEDIDO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17463213116551917)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(17460410768551915)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P22_ID_PEDIDO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17456326531551901)
,p_name=>'P22_ID_PEDIDO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17455924246551901)
,p_item_source_plug_id=>wwv_flow_api.id(17455924246551901)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Pedido'
,p_source=>'ID_PEDIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864657504407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17456728479551901)
,p_name=>'P22_FECHA_PEDIDO'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17455924246551901)
,p_item_source_plug_id=>wwv_flow_api.id(17455924246551901)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Pedido'
,p_source=>'FECHA_PEDIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864657504407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17457163401551901)
,p_name=>'P22_FECHA_ENVIO'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(17455924246551901)
,p_item_source_plug_id=>wwv_flow_api.id(17455924246551901)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fecha Envio'
,p_source=>'FECHA_ENVIO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864657504407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17457572575551903)
,p_name=>'P22_MONTO_TOTAL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17455924246551901)
,p_item_source_plug_id=>wwv_flow_api.id(17455924246551901)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Monto Total'
,p_source=>'MONTO_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17457979580551903)
,p_name=>'P22_ID_ESTADO_PEDIDO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(17455924246551901)
,p_item_source_plug_id=>wwv_flow_api.id(17455924246551901)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Estado Pedido'
,p_source=>'ID_ESTADO_PEDIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17458350001551903)
,p_name=>'P22_ID_USUARIO_PEDIDO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(17455924246551901)
,p_item_source_plug_id=>wwv_flow_api.id(17455924246551901)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Usuario Pedido'
,p_source=>'ID_USUARIO_PEDIDO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17460905133551915)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(17460883151551915)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17461760966551917)
,p_event_id=>wwv_flow_api.id(17460905133551915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17464011172551921)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(17455924246551901)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Formulario Pedidos'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17464469151551923)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17463673372551921)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(17455924246551901)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Formulario Pedidos'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00023
begin
wwv_flow_api.create_page(
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Articulos'
,p_step_title=>'Articulos'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}'))
,p_step_template=>wwv_flow_api.id(22760223370407676)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201220244'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17493079290848484)
,p_plug_name=>'Articulos'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--hideIcon'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(22795414839407700)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17494226728848485)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(22777617594407689)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(17495021708848485)
,p_name=>'Master Records'
,p_template=>wwv_flow_api.id(22777800340407689)
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID_ARTICULO",',
'    null link_class,',
'    apex_page.get_url(p_items => ''P23_ID_ARTICULO'', p_values => "ID_ARTICULO") link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P23_ID_ARTICULO,''0'') = "ID_ARTICULO"',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("NOMBRE_ARTICULO", 1, 50)||( case when length("NOMBRE_ARTICULO") > 50 then ''...'' end ) list_title,',
'    substr("DESCRIPCION_ARTICULO", 1, 50)||( case when length("DESCRIPCION_ARTICULO") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'from "ARTICULOS" x',
'where (:P23_SEARCH is null',
'        or upper(x."NOMBRE_ARTICULO") like ''%''||upper(:P23_SEARCH)||''%''',
'        or upper(x."DESCRIPCION_ARTICULO") like ''%''||upper(:P23_SEARCH)||''%''',
'    )',
'order by "NOMBRE_ARTICULO"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P23_SEARCH'
,p_query_row_template=>wwv_flow_api.id(22820532286407718)
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'<div class="u-tC">No Records Found</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17495734313848495)
,p_query_column_id=>1
,p_column_alias=>'ID_ARTICULO'
,p_column_display_sequence=>1
,p_column_heading=>'Id Articulo'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17496112061848495)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'Link Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17496525033848495)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Link'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17496994258848496)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Icon Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17497398264848496)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'Link Attr'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17497763450848496)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'Icon Color Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17498188150848496)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'List Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17498567546848496)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'List Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17498991000848496)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'List Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17499359316848496)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'List Badge'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(17502713715848500)
,p_name=>'Articulos'
,p_template=>wwv_flow_api.id(22805024331407707)
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'ARTICULOS'
,p_query_where=>'"ID_ARTICULO" = :P23_ID_ARTICULO'
,p_include_rowid_column=>false
,p_display_when_condition=>'P23_ID_ARTICULO'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(22825931245407721)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17503426014848500)
,p_query_column_id=>1
,p_column_alias=>'ID_ARTICULO'
,p_column_display_sequence=>1
,p_column_heading=>'Id Articulo'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ARTICULOS"',
'where "ID_ARTICULO" is not null',
'and "ID_ARTICULO" = :P23_ID_ARTICULO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17503891242848501)
,p_query_column_id=>2
,p_column_alias=>'NOMBRE_ARTICULO'
,p_column_display_sequence=>2
,p_column_heading=>'Nombre Articulo'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ARTICULOS"',
'where "NOMBRE_ARTICULO" is not null',
'and "ID_ARTICULO" = :P23_ID_ARTICULO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17504209152848501)
,p_query_column_id=>3
,p_column_alias=>'PRECIO_ARTICULO'
,p_column_display_sequence=>3
,p_column_heading=>'Precio Articulo'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ARTICULOS"',
'where "PRECIO_ARTICULO" is not null',
'and "ID_ARTICULO" = :P23_ID_ARTICULO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17504691066848501)
,p_query_column_id=>4
,p_column_alias=>'IMAGEN_ARTICULO'
,p_column_display_sequence=>4
,p_column_heading=>'Imagen Articulo'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ARTICULOS"',
'where "IMAGEN_ARTICULO" is not null',
'and "ID_ARTICULO" = :P23_ID_ARTICULO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17505091356848501)
,p_query_column_id=>5
,p_column_alias=>'DESCRIPCION_ARTICULO'
,p_column_display_sequence=>5
,p_column_heading=>'Descripcion Articulo'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ARTICULOS"',
'where "DESCRIPCION_ARTICULO" is not null',
'and "ID_ARTICULO" = :P23_ID_ARTICULO'))
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17505496856848501)
,p_query_column_id=>6
,p_column_alias=>'ID_CATEGORIA_ARTICULO'
,p_column_display_sequence=>6
,p_column_heading=>'Id Categoria Articulo'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "ARTICULOS"',
'where "ID_CATEGORIA_ARTICULO" is not null',
'and "ID_ARTICULO" = :P23_ID_ARTICULO'))
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17510051111848504)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(22777617594407689)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P23_ID_ARTICULO'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(17510486840848504)
,p_name=>'Informacion de pedidos'
,p_template=>wwv_flow_api.id(22805024331407707)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'DETALLE_PEDIDO'
,p_query_where=>'"ID_ARTICULO_DETALLE" = :P23_ID_ARTICULO'
,p_include_rowid_column=>true
,p_display_when_condition=>'P23_ID_ARTICULO'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_query_row_template=>wwv_flow_api.id(22831338776407725)
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17511289627848506)
,p_query_column_id=>1
,p_column_alias=>'ROWID'
,p_column_display_sequence=>1
,p_column_heading=>'<span class="u-VisuallyHidden">Edit</span>'
,p_column_link=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RP:P25_ROWID:#ROWID#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_heading_alignment=>'LEFT'
,p_report_column_width=>32
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17511660584848506)
,p_query_column_id=>2
,p_column_alias=>'ID_PEDIDO_DETALLE'
,p_column_display_sequence=>2
,p_column_heading=>'Id Pedido Detalle'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17512057567848506)
,p_query_column_id=>3
,p_column_alias=>'ID_ARTICULO_DETALLE'
,p_column_display_sequence=>3
,p_column_heading=>'Id Articulo Detalle'
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17512428701848506)
,p_query_column_id=>4
,p_column_alias=>'CANTIDAD'
,p_column_display_sequence=>4
,p_column_heading=>'Cantidad'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(17512867699848507)
,p_query_column_id=>5
,p_column_alias=>'TOTAL_ARTICULO'
,p_column_display_sequence=>5
,p_column_heading=>'Total Articulo'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17526130403848535)
,p_plug_name=>'No Record Selected'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(22777617594407689)
,p_plug_display_sequence=>70
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>'No Record Selected'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P23_ID_ARTICULO'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17515450662848507)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17510486840848504)
,p_button_name=>'POP_DETALLE_PEDIDO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI'
,p_button_template_id=>wwv_flow_api.id(22865062901407750)
,p_button_image_alt=>'Add Informacion de pedidos'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:RP,25:P25_ID_ARTICULO_DETALLE:&P23_ID_ARTICULO.'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17526683996848537)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17502713715848500)
,p_button_name=>'EDIT'
,p_button_static_id=>'edit_master_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(22865817769407750)
,p_button_image_alt=>'Edit'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP,24:P24_ID_ARTICULO:&P23_ID_ARTICULO.'
,p_icon_css_classes=>'fa-pencil-square-o'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17493562558848485)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17493079290848484)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft:t-Button--gapRight'
,p_button_template_id=>wwv_flow_api.id(22865817769407750)
,p_button_image_alt=>'Reset'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.:RESET:&DEBUG.:RP,23::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17493957306848485)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17493079290848484)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(22865817769407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP,24::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17494627601848485)
,p_name=>'P23_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17494226728848485)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(22864393233407746)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17509774849848504)
,p_name=>'P23_ID_ARTICULO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17502713715848500)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17526926113848537)
,p_name=>'Edit Master Record'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(17502713715848500)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17527546914848537)
,p_event_id=>wwv_flow_api.id(17526926113848537)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17502713715848500)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17528045413848537)
,p_event_id=>wwv_flow_api.id(17526926113848537)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Articulos\u0020updated'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17510544017848504)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(17510486840848504)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17516171872848509)
,p_event_id=>wwv_flow_api.id(17510544017848504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17510486840848504)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17516629635848509)
,p_event_id=>wwv_flow_api.id(17510544017848504)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Informacion de pedidos updated'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17527012746848537)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P23_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_bind_event_type=>'keypress'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17528852973848537)
,p_event_id=>wwv_flow_api.id(17527012746848537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(17495021708848485)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17529350609848539)
,p_event_id=>wwv_flow_api.id(17527012746848537)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
end;
/
prompt --application/pages/page_00024
begin
wwv_flow_api.create_page(
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Articulos'
,p_page_mode=>'MODAL'
,p_step_title=>'Articulos'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201220243'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17482136283848473)
,p_plug_name=>'Articulos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22777617594407689)
,p_plug_display_sequence=>0
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'ARTICULOS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17486773760848481)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22778612489407690)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17487137212848481)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17486773760848481)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17488729206848482)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17486773760848481)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P24_ID_ARTICULO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17489197992848482)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(17486773760848481)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P24_ID_ARTICULO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17489545352848482)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(17486773760848481)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P24_ID_ARTICULO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17491131413848482)
,p_branch_name=>'Redirect to new'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP:P23_ID_ARTICULO:&P24_ID_ARTICULO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(17489545352848482)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17491567145848482)
,p_branch_name=>'Redirect to all'
,p_branch_action=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP,23::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(17488729206848482)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17482566165848478)
,p_name=>'P24_ID_ARTICULO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17482136283848473)
,p_item_source_plug_id=>wwv_flow_api.id(17482136283848473)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Articulo'
,p_source=>'ID_ARTICULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864657504407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17482965288848478)
,p_name=>'P24_NOMBRE_ARTICULO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17482136283848473)
,p_item_source_plug_id=>wwv_flow_api.id(17482136283848473)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Nombre Articulo'
,p_source=>'NOMBRE_ARTICULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17483379432848479)
,p_name=>'P24_PRECIO_ARTICULO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(17482136283848473)
,p_item_source_plug_id=>wwv_flow_api.id(17482136283848473)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Precio Articulo'
,p_source=>'PRECIO_ARTICULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17483700743848479)
,p_name=>'P24_IMAGEN_ARTICULO'
,p_source_data_type=>'BLOB'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17482136283848473)
,p_item_source_plug_id=>wwv_flow_api.id(17482136283848473)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Imagen Articulo'
,p_source=>'IMAGEN_ARTICULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_06=>'Y'
,p_attribute_08=>'attachment'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17484117848848479)
,p_name=>'P24_DESCRIPCION_ARTICULO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(17482136283848473)
,p_item_source_plug_id=>wwv_flow_api.id(17482136283848473)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Descripcion Articulo'
,p_source=>'DESCRIPCION_ARTICULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17484563757848479)
,p_name=>'P24_ID_CATEGORIA_ARTICULO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(17482136283848473)
,p_item_source_plug_id=>wwv_flow_api.id(17482136283848473)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Categoria Articulo'
,p_source=>'ID_CATEGORIA_ARTICULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>22
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17487250036848481)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(17487137212848481)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17488053888848481)
,p_event_id=>wwv_flow_api.id(17487250036848481)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17490386169848482)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(17482136283848473)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Articulos'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17490706074848482)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(17489197992848482)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17489927084848482)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(17482136283848473)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Articulos'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_api.create_page(
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Informacion de pedidos'
,p_page_mode=>'MODAL'
,p_step_title=>'Informacion de pedidos'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201220244'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17517396801848531)
,p_plug_name=>'Informacion de pedidos'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22777617594407689)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'DETALLE_PEDIDO'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17521262513848534)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22778612489407690)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17521666836848534)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17521262513848534)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17523201785848534)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17521262513848534)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_image_alt=>'Delete'
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P25_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17523631367848534)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(17521262513848534)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P25_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17524077099848534)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(17521262513848534)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_condition=>'P25_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17517765647848532)
,p_name=>'P25_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17517396801848531)
,p_item_source_plug_id=>wwv_flow_api.id(17517396801848531)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864657504407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17518113362848532)
,p_name=>'P25_ID_PEDIDO_DETALLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17517396801848531)
,p_item_source_plug_id=>wwv_flow_api.id(17517396801848531)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Pedido Detalle'
,p_source=>'ID_PEDIDO_DETALLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17518598842848532)
,p_name=>'P25_ID_ARTICULO_DETALLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(17517396801848531)
,p_item_source_plug_id=>wwv_flow_api.id(17517396801848531)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Articulo Detalle'
,p_source=>'ID_ARTICULO_DETALLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17518972281848532)
,p_name=>'P25_CANTIDAD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17517396801848531)
,p_item_source_plug_id=>wwv_flow_api.id(17517396801848531)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cantidad'
,p_source=>'CANTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17519395691848532)
,p_name=>'P25_TOTAL_ARTICULO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(17517396801848531)
,p_item_source_plug_id=>wwv_flow_api.id(17517396801848531)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Total Articulo'
,p_source=>'TOTAL_ARTICULO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864975172407748)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17521765478848534)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(17521666836848534)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17522518455848534)
,p_event_id=>wwv_flow_api.id(17521765478848534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17524801168848535)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(17517396801848531)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Informacion de pedidos'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17525220077848535)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_01=>'P25_ROWID,REQUEST'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17524487860848535)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(17517396801848531)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Informacion de pedidos'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_api.create_page(
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(22888291314407775)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_step_title=>'POlICOMERCE - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(22756409801407673)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'POLICOMERCE'
,p_last_upd_yyyymmddhh24miss=>'20200201134314'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22892113256407796)
,p_plug_name=>'POlICOMERCE'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(22803772076407707)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(22896800410407803)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(22892113256407796)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(22777617594407689)
,p_plug_display_sequence=>20
,p_plug_display_point=>'BODY'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(22894953765407801)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(22892113256407796)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(22865788950407750)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22892563997407796)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(22892113256407796)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864393233407746)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22892947840407798)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(22892113256407796)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864393233407746)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(22894078108407800)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(22892113256407796)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(22893285289407798)||'.'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(22864393233407746)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22895771036407803)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22895357216407801)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22896558556407803)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(22896144211407803)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
