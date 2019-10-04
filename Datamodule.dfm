object DModule: TDModule
  OldCreateOrder = False
  Height = 644
  Width = 939
  object FDConnectionAccess: TFDConnection
    Params.Strings = (
      'DriverID=MSAcc')
    Left = 312
    Top = 152
  end
  object FDConnectionMySQL: TFDConnection
    Params.Strings = (
      'DriverID=MySQL')
    Left = 496
    Top = 152
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    Left = 304
    Top = 272
  end
  object FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    Left = 504
    Top = 272
  end
  object FDConnectionLocal: TFDConnection
    Left = 104
    Top = 96
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 104
    Top = 152
  end
end
