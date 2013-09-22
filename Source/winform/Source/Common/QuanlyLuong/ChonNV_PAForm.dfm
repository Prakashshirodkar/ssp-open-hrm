inherited frmChonNV_PA: TfrmChonNV_PA
  Left = 475
  Top = 226
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxLayoutControl1: TdxLayoutControl
    inherited gridData: TdxDBGrid
      Filter.Criteria = {00000000}
    end
  end
  inherited fcMain: TElFormCaption
    Texts = <
      item
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Caption = 'Ch'#7885'n nh'#226'n vi'#234'n ch'#7881' '#273#7883'nh cho ph'#432#417'ng '#225'n l'#432#417'ng'
        Layout = blGlyphLeft
        Align = taLeftJustify
      end>
  end
  inherited qryData: TIBOQuery
    Params = <
      item
        DataType = ftWideString
        Name = 'USER_NAME'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'DEPT_NO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VIEW_ALL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'key_id'
        ParamType = ptInput
      end>
    DataSource = frmLuong_TaoPA.dsPALuong
    SQL.Strings = (
      'select'
      '  hr_get_emp_list.emp_no,'
      '  hr_get_emp_list.full_name,'
      '  hr_get_emp_list.dept_no,'
      '  hr_get_emp_list.dept_name,'
      '  hr_get_emp_list.title_no,'
      '  hr_get_emp_list.title_name,'
      '  hr_get_emp_list.position_no,'
      '  hr_get_emp_list.assigned_date,'
      '  hr_get_emp_list.is_main_position,'
      '  hr_get_emp_list.is_dismissed,'
      '  hr_get_emp_list.work_type_no,'
      '  hr_get_emp_list.work_type_name,'
      '  hr_get_emp_list.end_date,'
      '  hr_get_emp_list.dismiss_date,'
      '  hr_get_emp_list.contract_no,'
      '  hr_get_emp_list.decision_no,'
      '  hr_get_emp_list.email,'
      '  hr_get_emp_list.maso_bhxh '
      'from hr_get_emp_list(:USER_NAME,:DEPT_NO,:VIEW_ALL)'
      'left join hr_luong_pa_nv on'
      '   hr_luong_pa_nv.ma_nhanvien=hr_get_emp_list.emp_no and'
      '   hr_luong_pa_nv.ma_donvi=hr_get_emp_list.dept_no and'
      '   hr_luong_pa_nv.ma_chucvu=hr_get_emp_list.title_no and'
      '   hr_luong_pa_nv.ma_pa=:key_id'
      'where'
      '   hr_get_emp_list.is_dismissed=0 and'
      '   hr_get_emp_list.is_main_position=1 and'
      '   hr_luong_pa_nv.ma_pa is null')
  end
end
