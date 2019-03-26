create or replace package file_raw_data_api authid definer 
as

  -- Add a new row to FILE_RAW_DATA.
  procedure insert_row (
    i_filename  in file_raw_data.filename%type,
    i_directory in varchar2 default utils.default_directory);

  -- Add a new row to FILE_RAW_DATA and returns the corresponding FRD_ID.
  function insert_row (
      i_filename  in file_raw_data.filename%type,
      i_directory in varchar2 default utils.default_directory)
    return number;

  -- Add a new row to FILE_RAW_DATA.
  procedure insert_row (
    i_filename    in file_raw_data.filename%type,
    i_binary_data in blob);

  -- Add a new row to FILE_RAW_DATA and returns the corresponding FRD_ID.
  function insert_row (
      i_filename    in file_raw_data.filename%type,
      i_binary_data in blob)
    return number;

  -- Add a new row to FILE_RAW_DATA.
  procedure insert_row (
    i_filename      in file_raw_data.filename%type,
    i_plain_text    in clob,
    i_character_set in file_meta_data.character_set%type);

  -- Add a new row to FILE_RAW_DATA and returns the corresponding FRD_ID.
  function insert_row (
      i_filename      in file_raw_data.filename%type,
      i_plain_text    in clob,
      i_character_set in file_meta_data.character_set%type)
    return number;

end file_raw_data_api;
/