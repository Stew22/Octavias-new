program Octavias_Stock_Order;

uses
  Vcl.Forms,
  ExtCtrls,
  Windows,
  frmlogin_U in 'frmlogin_U.pas' {frmlogin},
  frmregister_U in 'frmregister_U.pas' {frmadduser},
  frmmain_U in 'frmmain_U.pas' {frmmain},
  frm_Vendors_U in 'frm_Vendors_U.pas' {frmvendors},
  ENADC_U in 'ENADC_U.pas',
  frm_Stock_managment_U in 'frm_Stock_managment_U.pas' {frmstockmanagement},
  frm_Stock_Settings_U in 'frm_Stock_Settings_U.pas' {frmstocksettings},
  DM_Users in 'DM_Users.pas' {DataModuleUsers: TDataModule},
  DM_Stock in 'DM_Stock.pas' {DataModule2: TDataModule},
  DM_Order in 'DM_Order.pas' {Datamoduleorder: TDataModule},
  frmremoveuser_U in 'frmremoveuser_U.pas' {frmremoveuser},
  frmsplash_U in 'frmsplash_U.pas' {frmsplash},
  frm_Bookings_U in 'frm_Bookings_U.pas' {frmbookings},
  frm_add_products_U in 'frm_add_products_U.pas' {frmaddproducts},
  frm_Vendors_Service_U in 'frm_Vendors_Service_U.pas' {frmaddservice},
  fm_Help_Widget_U in 'fm_Help_Widget_U.pas' {frmhelp},
  DM_Vendors in 'DM_Vendors.pas' {Datamodulevendor: TDataModule},
  frm_Report_Bug_U in 'frm_Report_Bug_U.pas' {frmeportbug};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //
  frmsplash:= Tfrmsplash.Create(nil);
  frmsplash.show;
  frmsplash.Update;
  Sleep(5000);
  frmsplash.Hide;
  frmsplash.Free;
  //
  //Application.CreateForm(Tfrmsplash, frmsplash);
  Application.CreateForm(Tfrmlogin, frmlogin);
  Application.CreateForm(Tfrmadduser, frmadduser);
  Application.CreateForm(Tfrmmain, frmmain);
  Application.CreateForm(Tfrmvendors, frmvendors);
  Application.CreateForm(Tfrmstockmanagement, frmstockmanagement);
  Application.CreateForm(Tfrmstocksettings, frmstocksettings);
  Application.CreateForm(TDataModuleUsers, DataModuleUsers);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TDatamoduleorder, Datamoduleorder);
  Application.CreateForm(Tfrmremoveuser, frmremoveuser);
  Application.CreateForm(Tfrmbookings, frmbookings);
  Application.CreateForm(Tfrmaddproducts, frmaddproducts);
  Application.CreateForm(Tfrmaddservice, frmaddservice);
  Application.CreateForm(Tfrmhelp, frmhelp);
  Application.CreateForm(TDatamodulevendor, Datamodulevendor);
  Application.CreateForm(Tfrmeportbug, frmeportbug);
  Application.Run;
end.