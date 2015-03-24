// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://10.1.30.94:7141/jstsh/service/IjstshWebService?wsdl
//  >Import : http://10.1.30.94:7141/jstsh/service/IjstshWebService?wsdl>0
//  >Import : http://10.1.30.94:7141/jstsh/service/IjstshWebService?wsdl>1
//  >Import : http://10.1.30.94:7141/jstsh/service/IjstshWebService?wsdl>2
//  >Import : http://10.1.30.94:7141/jstsh/service/IjstshWebService?wsdl>3
//  >Import : http://10.1.30.94:7141/jstsh/service/IjstshWebService?wsdl>4
//  >Import : http://10.1.30.94:7141/jstsh/service/IjstshWebService?wsdl>5
// Encoding : UTF-8
// Version  : 1.0
// (2015/2/26 17:25:37 - - $Rev: 69934 $)
// ************************************************************************ //

unit IjstshWebService;

interface

uses Soap.InvokeRegistry, Soap.SOAPHTTPClient, System.Types, Soap.XSBuiltIns;

const
  IS_OPTN = $0001;
  IS_UNBD = $0002;
  IS_NLBL = $0004;
  IS_REF  = $0080;


type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Embarcadero types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:long            - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:int             - "http://www.w3.org/2001/XMLSchema"[Gbl]
  // !:dateTime        - "http://www.w3.org/2001/XMLSchema"[Gbl]

  IOException2         = class;                 { "http://io.java"[GblCplx] }
  IOException          = class;                 { "http://iface.webservice.jstsh.sjtsoft.com"[Flt][GblElm] }
  Throwable            = class;                 { "http://lang.java"[GblCplx] }
  InvocationTargetException = class;            { "http://iface.webservice.jstsh.sjtsoft.com"[Flt][GblElm] }
  InvocationTargetException2 = class;           { "http://reflect.lang.java"[GblCplx] }
  IllegalAccessException2 = class;              { "http://lang.java"[GblCplx] }
  BXmDaibxx            = class;                 { "http://my.bjvsp.tongtech.com"[GblCplx] }
  SysException         = class;                 { "http://iface.webservice.jstsh.sjtsoft.com"[Flt][GblElm] }
  IllegalAccessException = class;               { "http://iface.webservice.jstsh.sjtsoft.com"[Flt][GblElm] }
  SysException2        = class;                 { "http://exception.core.sjtsoft.com.framework"[GblCplx] }



  // ************************************************************************ //
  // XML       : IOException, global, <complexType>
  // Namespace : http://io.java
  // ************************************************************************ //
  IOException2 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : IOException, global, <element>
  // Namespace : http://iface.webservice.jstsh.sjtsoft.com
  // Info      : Fault
  // Base Types: IOException
  // ************************************************************************ //
  IOException = class(ERemotableException)
  private
  published
  end;

  ArrayOfThrowable = array of Throwable;        { "http://lang.java"[GblCplx] }
  ArrayOfString = array of string;              { "http://iface.webservice.jstsh.sjtsoft.com"[GblCplx] }


  // ************************************************************************ //
  // XML       : Throwable, global, <complexType>
  // Namespace : http://lang.java
  // ************************************************************************ //
  Throwable = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : InvocationTargetException, global, <element>
  // Namespace : http://iface.webservice.jstsh.sjtsoft.com
  // Info      : Fault
  // Base Types: InvocationTargetException
  // ************************************************************************ //
  InvocationTargetException = class(ERemotableException)
  private
    Fcause: Throwable;
    Fcause_Specified: boolean;
    FtargetException: Throwable;
    FtargetException_Specified: boolean;
    procedure Setcause(Index: Integer; const AThrowable: Throwable);
    function  cause_Specified(Index: Integer): boolean;
    procedure SettargetException(Index: Integer; const AThrowable: Throwable);
    function  targetException_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cause:           Throwable  Index (IS_OPTN or IS_NLBL) read Fcause write Setcause stored cause_Specified;
    property targetException: Throwable  Index (IS_OPTN or IS_NLBL) read FtargetException write SettargetException stored targetException_Specified;
  end;



  // ************************************************************************ //
  // XML       : InvocationTargetException, global, <complexType>
  // Namespace : http://reflect.lang.java
  // ************************************************************************ //
  InvocationTargetException2 = class(TRemotable)
  private
    Fcause: Throwable;
    Fcause_Specified: boolean;
    FtargetException: Throwable;
    FtargetException_Specified: boolean;
    procedure Setcause(Index: Integer; const AThrowable: Throwable);
    function  cause_Specified(Index: Integer): boolean;
    procedure SettargetException(Index: Integer; const AThrowable: Throwable);
    function  targetException_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cause:           Throwable  Index (IS_OPTN or IS_NLBL) read Fcause write Setcause stored cause_Specified;
    property targetException: Throwable  Index (IS_OPTN or IS_NLBL) read FtargetException write SettargetException stored targetException_Specified;
  end;



  // ************************************************************************ //
  // XML       : IllegalAccessException, global, <complexType>
  // Namespace : http://lang.java
  // ************************************************************************ //
  IllegalAccessException2 = class(TRemotable)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : BXmDaibxx, global, <complexType>
  // Namespace : http://my.bjvsp.tongtech.com
  // ************************************************************************ //
  BXmDaibxx = class(TRemotable)
  private
    FFDtBanlsj: TXSDateTime;
    FFDtBanlsj_Specified: boolean;
    FFDtShoulsj: TXSDateTime;
    FFDtShoulsj_Specified: boolean;
    FFDtShoulsjStr: string;
    FFDtShoulsjStr_Specified: boolean;
    FFNbShifgk: Int64;
    FFNbShifgk_Specified: boolean;
    FFNbShifgkStr: string;
    FFNbShifgkStr_Specified: boolean;
    FFNbShifybm: Int64;
    FFNbShifybm_Specified: boolean;
    FFNbShifyhf: Int64;
    FFNbShifyhf_Specified: boolean;
    FFNbShifyhfStr: string;
    FFNbShifyhfStr_Specified: boolean;
    FFNbShoulbh: Int64;
    FFNbShoulbh_Specified: boolean;
    FFNbXinxlx: Int64;
    FFNbXinxlx_Specified: boolean;
    FFNbXinxzt: Int64;
    FFNbXinxzt_Specified: boolean;
    FFNbXinxztStr: string;
    FFNbXinxztStr_Specified: boolean;
    FFVcBanlyj: string;
    FFVcBanlyj_Specified: boolean;
    FFVcBanlyjStr: string;
    FFVcBanlyjStr_Specified: boolean;
    FFVcChaxmm: string;
    FFVcChaxmm_Specified: boolean;
    FFVcDaibxxid: string;
    FFVcDaibxxid_Specified: boolean;
    FFVcDengjr: string;
    FFVcDengjr_Specified: boolean;
    FFVcDiqbm: string;
    FFVcDiqbm_Specified: boolean;
    FFVcFanw: string;
    FFVcFanw_Specified: boolean;
    FFVcGongdid: string;
    FFVcGongdid_Specified: boolean;
    FFVcGongdlxfz: Int64;
    FFVcGongdlxfz_Specified: boolean;
    FFVcHuifdh: string;
    FFVcHuifdh_Specified: boolean;
    FFVcJilbs: string;
    FFVcJilbs_Specified: boolean;
    FFVcLaidhm: string;
    FFVcLaidhm_Specified: boolean;
    FFVcLaidrxb: string;
    FFVcLaidrxb_Specified: boolean;
    FFVcLaidrxm: string;
    FFVcLaidrxm_Specified: boolean;
    FFVcLaiy: string;
    FFVcLaiy_Specified: boolean;
    FFVcLianxdz: string;
    FFVcLianxdz_Specified: boolean;
    FFVcShejdwmc: string;
    FFVcShejdwmc_Specified: boolean;
    FFVcShengywjwz: string;
    FFVcShengywjwz_Specified: boolean;
    FFVcShoulnr: string;
    FFVcShoulnr_Specified: boolean;
    FFVcShoulnrStr: string;
    FFVcShoulnrStr_Specified: boolean;
    FFVcYewzlmc: string;
    FFVcYewzlmc_Specified: boolean;
    FFVcYonghid: string;
    FFVcYonghid_Specified: boolean;
    FFVcYoub: string;
    FFVcYoub_Specified: boolean;
    procedure SetFDtBanlsj(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  FDtBanlsj_Specified(Index: Integer): boolean;
    procedure SetFDtShoulsj(Index: Integer; const ATXSDateTime: TXSDateTime);
    function  FDtShoulsj_Specified(Index: Integer): boolean;
    procedure SetFDtShoulsjStr(Index: Integer; const Astring: string);
    function  FDtShoulsjStr_Specified(Index: Integer): boolean;
    procedure SetFNbShifgk(Index: Integer; const AInt64: Int64);
    function  FNbShifgk_Specified(Index: Integer): boolean;
    procedure SetFNbShifgkStr(Index: Integer; const Astring: string);
    function  FNbShifgkStr_Specified(Index: Integer): boolean;
    procedure SetFNbShifybm(Index: Integer; const AInt64: Int64);
    function  FNbShifybm_Specified(Index: Integer): boolean;
    procedure SetFNbShifyhf(Index: Integer; const AInt64: Int64);
    function  FNbShifyhf_Specified(Index: Integer): boolean;
    procedure SetFNbShifyhfStr(Index: Integer; const Astring: string);
    function  FNbShifyhfStr_Specified(Index: Integer): boolean;
    procedure SetFNbShoulbh(Index: Integer; const AInt64: Int64);
    function  FNbShoulbh_Specified(Index: Integer): boolean;
    procedure SetFNbXinxlx(Index: Integer; const AInt64: Int64);
    function  FNbXinxlx_Specified(Index: Integer): boolean;
    procedure SetFNbXinxzt(Index: Integer; const AInt64: Int64);
    function  FNbXinxzt_Specified(Index: Integer): boolean;
    procedure SetFNbXinxztStr(Index: Integer; const Astring: string);
    function  FNbXinxztStr_Specified(Index: Integer): boolean;
    procedure SetFVcBanlyj(Index: Integer; const Astring: string);
    function  FVcBanlyj_Specified(Index: Integer): boolean;
    procedure SetFVcBanlyjStr(Index: Integer; const Astring: string);
    function  FVcBanlyjStr_Specified(Index: Integer): boolean;
    procedure SetFVcChaxmm(Index: Integer; const Astring: string);
    function  FVcChaxmm_Specified(Index: Integer): boolean;
    procedure SetFVcDaibxxid(Index: Integer; const Astring: string);
    function  FVcDaibxxid_Specified(Index: Integer): boolean;
    procedure SetFVcDengjr(Index: Integer; const Astring: string);
    function  FVcDengjr_Specified(Index: Integer): boolean;
    procedure SetFVcDiqbm(Index: Integer; const Astring: string);
    function  FVcDiqbm_Specified(Index: Integer): boolean;
    procedure SetFVcFanw(Index: Integer; const Astring: string);
    function  FVcFanw_Specified(Index: Integer): boolean;
    procedure SetFVcGongdid(Index: Integer; const Astring: string);
    function  FVcGongdid_Specified(Index: Integer): boolean;
    procedure SetFVcGongdlxfz(Index: Integer; const AInt64: Int64);
    function  FVcGongdlxfz_Specified(Index: Integer): boolean;
    procedure SetFVcHuifdh(Index: Integer; const Astring: string);
    function  FVcHuifdh_Specified(Index: Integer): boolean;
    procedure SetFVcJilbs(Index: Integer; const Astring: string);
    function  FVcJilbs_Specified(Index: Integer): boolean;
    procedure SetFVcLaidhm(Index: Integer; const Astring: string);
    function  FVcLaidhm_Specified(Index: Integer): boolean;
    procedure SetFVcLaidrxb(Index: Integer; const Astring: string);
    function  FVcLaidrxb_Specified(Index: Integer): boolean;
    procedure SetFVcLaidrxm(Index: Integer; const Astring: string);
    function  FVcLaidrxm_Specified(Index: Integer): boolean;
    procedure SetFVcLaiy(Index: Integer; const Astring: string);
    function  FVcLaiy_Specified(Index: Integer): boolean;
    procedure SetFVcLianxdz(Index: Integer; const Astring: string);
    function  FVcLianxdz_Specified(Index: Integer): boolean;
    procedure SetFVcShejdwmc(Index: Integer; const Astring: string);
    function  FVcShejdwmc_Specified(Index: Integer): boolean;
    procedure SetFVcShengywjwz(Index: Integer; const Astring: string);
    function  FVcShengywjwz_Specified(Index: Integer): boolean;
    procedure SetFVcShoulnr(Index: Integer; const Astring: string);
    function  FVcShoulnr_Specified(Index: Integer): boolean;
    procedure SetFVcShoulnrStr(Index: Integer; const Astring: string);
    function  FVcShoulnrStr_Specified(Index: Integer): boolean;
    procedure SetFVcYewzlmc(Index: Integer; const Astring: string);
    function  FVcYewzlmc_Specified(Index: Integer): boolean;
    procedure SetFVcYonghid(Index: Integer; const Astring: string);
    function  FVcYonghid_Specified(Index: Integer): boolean;
    procedure SetFVcYoub(Index: Integer; const Astring: string);
    function  FVcYoub_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property FDtBanlsj:     TXSDateTime  Index (IS_OPTN) read FFDtBanlsj write SetFDtBanlsj stored FDtBanlsj_Specified;
    property FDtShoulsj:    TXSDateTime  Index (IS_OPTN) read FFDtShoulsj write SetFDtShoulsj stored FDtShoulsj_Specified;
    property FDtShoulsjStr: string       Index (IS_OPTN or IS_NLBL) read FFDtShoulsjStr write SetFDtShoulsjStr stored FDtShoulsjStr_Specified;
    property FNbShifgk:     Int64        Index (IS_OPTN or IS_NLBL) read FFNbShifgk write SetFNbShifgk stored FNbShifgk_Specified;
    property FNbShifgkStr:  string       Index (IS_OPTN or IS_NLBL) read FFNbShifgkStr write SetFNbShifgkStr stored FNbShifgkStr_Specified;
    property FNbShifybm:    Int64        Index (IS_OPTN or IS_NLBL) read FFNbShifybm write SetFNbShifybm stored FNbShifybm_Specified;
    property FNbShifyhf:    Int64        Index (IS_OPTN or IS_NLBL) read FFNbShifyhf write SetFNbShifyhf stored FNbShifyhf_Specified;
    property FNbShifyhfStr: string       Index (IS_OPTN or IS_NLBL) read FFNbShifyhfStr write SetFNbShifyhfStr stored FNbShifyhfStr_Specified;
    property FNbShoulbh:    Int64        Index (IS_OPTN or IS_NLBL) read FFNbShoulbh write SetFNbShoulbh stored FNbShoulbh_Specified;
    property FNbXinxlx:     Int64        Index (IS_OPTN or IS_NLBL) read FFNbXinxlx write SetFNbXinxlx stored FNbXinxlx_Specified;
    property FNbXinxzt:     Int64        Index (IS_OPTN or IS_NLBL) read FFNbXinxzt write SetFNbXinxzt stored FNbXinxzt_Specified;
    property FNbXinxztStr:  string       Index (IS_OPTN or IS_NLBL) read FFNbXinxztStr write SetFNbXinxztStr stored FNbXinxztStr_Specified;
    property FVcBanlyj:     string       Index (IS_OPTN or IS_NLBL) read FFVcBanlyj write SetFVcBanlyj stored FVcBanlyj_Specified;
    property FVcBanlyjStr:  string       Index (IS_OPTN or IS_NLBL) read FFVcBanlyjStr write SetFVcBanlyjStr stored FVcBanlyjStr_Specified;
    property FVcChaxmm:     string       Index (IS_OPTN or IS_NLBL) read FFVcChaxmm write SetFVcChaxmm stored FVcChaxmm_Specified;
    property FVcDaibxxid:   string       Index (IS_OPTN or IS_NLBL) read FFVcDaibxxid write SetFVcDaibxxid stored FVcDaibxxid_Specified;
    property FVcDengjr:     string       Index (IS_OPTN or IS_NLBL) read FFVcDengjr write SetFVcDengjr stored FVcDengjr_Specified;
    property FVcDiqbm:      string       Index (IS_OPTN or IS_NLBL) read FFVcDiqbm write SetFVcDiqbm stored FVcDiqbm_Specified;
    property FVcFanw:       string       Index (IS_OPTN or IS_NLBL) read FFVcFanw write SetFVcFanw stored FVcFanw_Specified;
    property FVcGongdid:    string       Index (IS_OPTN or IS_NLBL) read FFVcGongdid write SetFVcGongdid stored FVcGongdid_Specified;
    property FVcGongdlxfz:  Int64        Index (IS_OPTN or IS_NLBL) read FFVcGongdlxfz write SetFVcGongdlxfz stored FVcGongdlxfz_Specified;
    property FVcHuifdh:     string       Index (IS_OPTN or IS_NLBL) read FFVcHuifdh write SetFVcHuifdh stored FVcHuifdh_Specified;
    property FVcJilbs:      string       Index (IS_OPTN or IS_NLBL) read FFVcJilbs write SetFVcJilbs stored FVcJilbs_Specified;
    property FVcLaidhm:     string       Index (IS_OPTN or IS_NLBL) read FFVcLaidhm write SetFVcLaidhm stored FVcLaidhm_Specified;
    property FVcLaidrxb:    string       Index (IS_OPTN or IS_NLBL) read FFVcLaidrxb write SetFVcLaidrxb stored FVcLaidrxb_Specified;
    property FVcLaidrxm:    string       Index (IS_OPTN or IS_NLBL) read FFVcLaidrxm write SetFVcLaidrxm stored FVcLaidrxm_Specified;
    property FVcLaiy:       string       Index (IS_OPTN or IS_NLBL) read FFVcLaiy write SetFVcLaiy stored FVcLaiy_Specified;
    property FVcLianxdz:    string       Index (IS_OPTN or IS_NLBL) read FFVcLianxdz write SetFVcLianxdz stored FVcLianxdz_Specified;
    property FVcShejdwmc:   string       Index (IS_OPTN or IS_NLBL) read FFVcShejdwmc write SetFVcShejdwmc stored FVcShejdwmc_Specified;
    property FVcShengywjwz: string       Index (IS_OPTN or IS_NLBL) read FFVcShengywjwz write SetFVcShengywjwz stored FVcShengywjwz_Specified;
    property FVcShoulnr:    string       Index (IS_OPTN or IS_NLBL) read FFVcShoulnr write SetFVcShoulnr stored FVcShoulnr_Specified;
    property FVcShoulnrStr: string       Index (IS_OPTN or IS_NLBL) read FFVcShoulnrStr write SetFVcShoulnrStr stored FVcShoulnrStr_Specified;
    property FVcYewzlmc:    string       Index (IS_OPTN or IS_NLBL) read FFVcYewzlmc write SetFVcYewzlmc stored FVcYewzlmc_Specified;
    property FVcYonghid:    string       Index (IS_OPTN or IS_NLBL) read FFVcYonghid write SetFVcYonghid stored FVcYonghid_Specified;
    property FVcYoub:       string       Index (IS_OPTN or IS_NLBL) read FFVcYoub write SetFVcYoub stored FVcYoub_Specified;
  end;



  // ************************************************************************ //
  // XML       : SysException, global, <element>
  // Namespace : http://iface.webservice.jstsh.sjtsoft.com
  // Info      : Fault
  // Base Types: SysException
  // ************************************************************************ //
  SysException = class(ERemotableException)
  private
    Fcause: Throwable;
    Fcause_Specified: boolean;
    Fmessages: ArrayOfString;
    Fmessages_Specified: boolean;
    FthrowableCount: Integer;
    FthrowableCount_Specified: boolean;
    Fthrowables: ArrayOfThrowable;
    Fthrowables_Specified: boolean;
    procedure Setcause(Index: Integer; const AThrowable: Throwable);
    function  cause_Specified(Index: Integer): boolean;
    procedure Setmessages(Index: Integer; const AArrayOfString: ArrayOfString);
    function  messages_Specified(Index: Integer): boolean;
    procedure SetthrowableCount(Index: Integer; const AInteger: Integer);
    function  throwableCount_Specified(Index: Integer): boolean;
    procedure Setthrowables(Index: Integer; const AArrayOfThrowable: ArrayOfThrowable);
    function  throwables_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cause:          Throwable         Index (IS_OPTN or IS_NLBL) read Fcause write Setcause stored cause_Specified;
    property messages:       ArrayOfString     Index (IS_OPTN or IS_NLBL) read Fmessages write Setmessages stored messages_Specified;
    property throwableCount: Integer           Index (IS_OPTN) read FthrowableCount write SetthrowableCount stored throwableCount_Specified;
    property throwables:     ArrayOfThrowable  Index (IS_OPTN or IS_NLBL) read Fthrowables write Setthrowables stored throwables_Specified;
  end;



  // ************************************************************************ //
  // XML       : IllegalAccessException, global, <element>
  // Namespace : http://iface.webservice.jstsh.sjtsoft.com
  // Info      : Fault
  // Base Types: IllegalAccessException
  // ************************************************************************ //
  IllegalAccessException = class(ERemotableException)
  private
  published
  end;



  // ************************************************************************ //
  // XML       : SysException, global, <complexType>
  // Namespace : http://exception.core.sjtsoft.com.framework
  // ************************************************************************ //
  SysException2 = class(TRemotable)
  private
    Fcause: Throwable;
    Fcause_Specified: boolean;
    Fmessages: ArrayOfString;
    Fmessages_Specified: boolean;
    FthrowableCount: Integer;
    FthrowableCount_Specified: boolean;
    Fthrowables: ArrayOfThrowable;
    Fthrowables_Specified: boolean;
    procedure Setcause(Index: Integer; const AThrowable: Throwable);
    function  cause_Specified(Index: Integer): boolean;
    procedure Setmessages(Index: Integer; const AArrayOfString: ArrayOfString);
    function  messages_Specified(Index: Integer): boolean;
    procedure SetthrowableCount(Index: Integer; const AInteger: Integer);
    function  throwableCount_Specified(Index: Integer): boolean;
    procedure Setthrowables(Index: Integer; const AArrayOfThrowable: ArrayOfThrowable);
    function  throwables_Specified(Index: Integer): boolean;
  public
    destructor Destroy; override;
  published
    property cause:          Throwable         Index (IS_OPTN or IS_NLBL) read Fcause write Setcause stored cause_Specified;
    property messages:       ArrayOfString     Index (IS_OPTN or IS_NLBL) read Fmessages write Setmessages stored messages_Specified;
    property throwableCount: Integer           Index (IS_OPTN) read FthrowableCount write SetthrowableCount stored throwableCount_Specified;
    property throwables:     ArrayOfThrowable  Index (IS_OPTN or IS_NLBL) read Fthrowables write Setthrowables stored throwables_Specified;
  end;


  // ************************************************************************ //
  // Namespace : http://iface.webservice.jstsh.sjtsoft.com
  // transport : http://schemas.xmlsoap.org/soap/http
  // style     : document
  // use       : literal
  // binding   : IjstshWebServiceHttpBinding
  // service   : IjstshWebService
  // port      : IjstshWebServiceHttpPort
  // URL       : http://10.1.30.94:7141/jstsh/service/IjstshWebService
  // ************************************************************************ //
  IjstshWebServicePortType = interface(IInvokable)
  ['{35603D45-CF91-68E4-A956-A3286071B1A9}']
    function  queryAllDq: string; stdcall;
    procedure closeMessage(const in0: string; const in1: string); stdcall;
    function  updPwd(const in0: string; const in1: string; const in2: string): string; stdcall;
    function  queryVoiceFtpUrl: string; stdcall;
    function  Duanxhd(const in0: string; const in1: string; const in2: string): string; stdcall;
    function  seatLogout(const in0: string): string; stdcall;
    function  DuanxhdHistory(const in0: string; const in1: string; const in2: string): string; stdcall;
    function  querySeat: string; stdcall;
    function  queryWorkload: string; stdcall;
    function  queryAllNum: string; stdcall;
    function  checkLogin(const in0: string; const in1: string): string; stdcall;
    function  queryBXmGonggtz(const in0: string; const in1: string; const in2: string): string; stdcall;
    procedure test; stdcall;
    function  queryAllCamera: string; stdcall;
    function  queryMessage(const in0: string; const in1: string; const in2: string): string; stdcall;
    function  queryBXmXiaox(const in0: string): string; stdcall;
    function  sendMessages(const in0: string; const in1: string; const in2: string; const in3: string; const in4: TXSDateTime; const in5: TXSDateTime; 
                           const in6: string; const in7: string; const in8: string): Integer; stdcall;
    function  queryCallOutRecord(const in0: string; const in1: string; const in2: string): string; stdcall;
    function  savePhoneRecord(const in0: string): string; stdcall;
    function  TransformData(const in0: string; const in1: string; const in2: string): string; stdcall;
    function  SetData(const in0: string; const in1: string; const in2: string; const in3: string; const in4: string): Integer; stdcall;
    function  GetData(const in0: string; const in1: string; const in2: string; const in3: string): string; stdcall;
    function  intervalMessage(const in0: string; const in1: Integer; const in2: Integer; const in3: string): string; stdcall;
    function  saveMessage(const in0: string): Integer; stdcall;
    function  queryAllMache: string; stdcall;
    function  querySjzd(const in0: Integer): string; stdcall;
    function  saveDaibxxToOtherPlatform(const in0: BXmDaibxx): Integer; stdcall;
    function  seatLogin(const in0: string; const in1: string): string; stdcall;
    function  queryMacheAndCamera: string; stdcall;
    function  saveZxrz(const in0: string): Integer; stdcall;
  end;

function GetIjstshWebServicePortType(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IjstshWebServicePortType;


implementation
  uses System.SysUtils;

function GetIjstshWebServicePortType(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IjstshWebServicePortType;
const
  defWSDL = 'http://10.1.30.94:7141/jstsh/service/IjstshWebService?wsdl';
  defURL  = 'http://10.1.30.94:7141/jstsh/service/IjstshWebService';
  defSvc  = 'IjstshWebService';
  defPrt  = 'IjstshWebServiceHttpPort';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IjstshWebServicePortType);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor InvocationTargetException.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcause);
  System.SysUtils.FreeAndNil(FtargetException);
  inherited Destroy;
end;

procedure InvocationTargetException.Setcause(Index: Integer; const AThrowable: Throwable);
begin
  Fcause := AThrowable;
  Fcause_Specified := True;
end;

function InvocationTargetException.cause_Specified(Index: Integer): boolean;
begin
  Result := Fcause_Specified;
end;

procedure InvocationTargetException.SettargetException(Index: Integer; const AThrowable: Throwable);
begin
  FtargetException := AThrowable;
  FtargetException_Specified := True;
end;

function InvocationTargetException.targetException_Specified(Index: Integer): boolean;
begin
  Result := FtargetException_Specified;
end;

destructor InvocationTargetException2.Destroy;
begin
  System.SysUtils.FreeAndNil(Fcause);
  System.SysUtils.FreeAndNil(FtargetException);
  inherited Destroy;
end;

procedure InvocationTargetException2.Setcause(Index: Integer; const AThrowable: Throwable);
begin
  Fcause := AThrowable;
  Fcause_Specified := True;
end;

function InvocationTargetException2.cause_Specified(Index: Integer): boolean;
begin
  Result := Fcause_Specified;
end;

procedure InvocationTargetException2.SettargetException(Index: Integer; const AThrowable: Throwable);
begin
  FtargetException := AThrowable;
  FtargetException_Specified := True;
end;

function InvocationTargetException2.targetException_Specified(Index: Integer): boolean;
begin
  Result := FtargetException_Specified;
end;

destructor BXmDaibxx.Destroy;
begin
  System.SysUtils.FreeAndNil(FFDtBanlsj);
  System.SysUtils.FreeAndNil(FFDtShoulsj);
  inherited Destroy;
end;

procedure BXmDaibxx.SetFDtBanlsj(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FFDtBanlsj := ATXSDateTime;
  FFDtBanlsj_Specified := True;
end;

function BXmDaibxx.FDtBanlsj_Specified(Index: Integer): boolean;
begin
  Result := FFDtBanlsj_Specified;
end;

procedure BXmDaibxx.SetFDtShoulsj(Index: Integer; const ATXSDateTime: TXSDateTime);
begin
  FFDtShoulsj := ATXSDateTime;
  FFDtShoulsj_Specified := True;
end;

function BXmDaibxx.FDtShoulsj_Specified(Index: Integer): boolean;
begin
  Result := FFDtShoulsj_Specified;
end;

procedure BXmDaibxx.SetFDtShoulsjStr(Index: Integer; const Astring: string);
begin
  FFDtShoulsjStr := Astring;
  FFDtShoulsjStr_Specified := True;
end;

function BXmDaibxx.FDtShoulsjStr_Specified(Index: Integer): boolean;
begin
  Result := FFDtShoulsjStr_Specified;
end;

procedure BXmDaibxx.SetFNbShifgk(Index: Integer; const AInt64: Int64);
begin
  FFNbShifgk := AInt64;
  FFNbShifgk_Specified := True;
end;

function BXmDaibxx.FNbShifgk_Specified(Index: Integer): boolean;
begin
  Result := FFNbShifgk_Specified;
end;

procedure BXmDaibxx.SetFNbShifgkStr(Index: Integer; const Astring: string);
begin
  FFNbShifgkStr := Astring;
  FFNbShifgkStr_Specified := True;
end;

function BXmDaibxx.FNbShifgkStr_Specified(Index: Integer): boolean;
begin
  Result := FFNbShifgkStr_Specified;
end;

procedure BXmDaibxx.SetFNbShifybm(Index: Integer; const AInt64: Int64);
begin
  FFNbShifybm := AInt64;
  FFNbShifybm_Specified := True;
end;

function BXmDaibxx.FNbShifybm_Specified(Index: Integer): boolean;
begin
  Result := FFNbShifybm_Specified;
end;

procedure BXmDaibxx.SetFNbShifyhf(Index: Integer; const AInt64: Int64);
begin
  FFNbShifyhf := AInt64;
  FFNbShifyhf_Specified := True;
end;

function BXmDaibxx.FNbShifyhf_Specified(Index: Integer): boolean;
begin
  Result := FFNbShifyhf_Specified;
end;

procedure BXmDaibxx.SetFNbShifyhfStr(Index: Integer; const Astring: string);
begin
  FFNbShifyhfStr := Astring;
  FFNbShifyhfStr_Specified := True;
end;

function BXmDaibxx.FNbShifyhfStr_Specified(Index: Integer): boolean;
begin
  Result := FFNbShifyhfStr_Specified;
end;

procedure BXmDaibxx.SetFNbShoulbh(Index: Integer; const AInt64: Int64);
begin
  FFNbShoulbh := AInt64;
  FFNbShoulbh_Specified := True;
end;

function BXmDaibxx.FNbShoulbh_Specified(Index: Integer): boolean;
begin
  Result := FFNbShoulbh_Specified;
end;

procedure BXmDaibxx.SetFNbXinxlx(Index: Integer; const AInt64: Int64);
begin
  FFNbXinxlx := AInt64;
  FFNbXinxlx_Specified := True;
end;

function BXmDaibxx.FNbXinxlx_Specified(Index: Integer): boolean;
begin
  Result := FFNbXinxlx_Specified;
end;

procedure BXmDaibxx.SetFNbXinxzt(Index: Integer; const AInt64: Int64);
begin
  FFNbXinxzt := AInt64;
  FFNbXinxzt_Specified := True;
end;

function BXmDaibxx.FNbXinxzt_Specified(Index: Integer): boolean;
begin
  Result := FFNbXinxzt_Specified;
end;

procedure BXmDaibxx.SetFNbXinxztStr(Index: Integer; const Astring: string);
begin
  FFNbXinxztStr := Astring;
  FFNbXinxztStr_Specified := True;
end;

function BXmDaibxx.FNbXinxztStr_Specified(Index: Integer): boolean;
begin
  Result := FFNbXinxztStr_Specified;
end;

procedure BXmDaibxx.SetFVcBanlyj(Index: Integer; const Astring: string);
begin
  FFVcBanlyj := Astring;
  FFVcBanlyj_Specified := True;
end;

function BXmDaibxx.FVcBanlyj_Specified(Index: Integer): boolean;
begin
  Result := FFVcBanlyj_Specified;
end;

procedure BXmDaibxx.SetFVcBanlyjStr(Index: Integer; const Astring: string);
begin
  FFVcBanlyjStr := Astring;
  FFVcBanlyjStr_Specified := True;
end;

function BXmDaibxx.FVcBanlyjStr_Specified(Index: Integer): boolean;
begin
  Result := FFVcBanlyjStr_Specified;
end;

procedure BXmDaibxx.SetFVcChaxmm(Index: Integer; const Astring: string);
begin
  FFVcChaxmm := Astring;
  FFVcChaxmm_Specified := True;
end;

function BXmDaibxx.FVcChaxmm_Specified(Index: Integer): boolean;
begin
  Result := FFVcChaxmm_Specified;
end;

procedure BXmDaibxx.SetFVcDaibxxid(Index: Integer; const Astring: string);
begin
  FFVcDaibxxid := Astring;
  FFVcDaibxxid_Specified := True;
end;

function BXmDaibxx.FVcDaibxxid_Specified(Index: Integer): boolean;
begin
  Result := FFVcDaibxxid_Specified;
end;

procedure BXmDaibxx.SetFVcDengjr(Index: Integer; const Astring: string);
begin
  FFVcDengjr := Astring;
  FFVcDengjr_Specified := True;
end;

function BXmDaibxx.FVcDengjr_Specified(Index: Integer): boolean;
begin
  Result := FFVcDengjr_Specified;
end;

procedure BXmDaibxx.SetFVcDiqbm(Index: Integer; const Astring: string);
begin
  FFVcDiqbm := Astring;
  FFVcDiqbm_Specified := True;
end;

function BXmDaibxx.FVcDiqbm_Specified(Index: Integer): boolean;
begin
  Result := FFVcDiqbm_Specified;
end;

procedure BXmDaibxx.SetFVcFanw(Index: Integer; const Astring: string);
begin
  FFVcFanw := Astring;
  FFVcFanw_Specified := True;
end;

function BXmDaibxx.FVcFanw_Specified(Index: Integer): boolean;
begin
  Result := FFVcFanw_Specified;
end;

procedure BXmDaibxx.SetFVcGongdid(Index: Integer; const Astring: string);
begin
  FFVcGongdid := Astring;
  FFVcGongdid_Specified := True;
end;

function BXmDaibxx.FVcGongdid_Specified(Index: Integer): boolean;
begin
  Result := FFVcGongdid_Specified;
end;

procedure BXmDaibxx.SetFVcGongdlxfz(Index: Integer; const AInt64: Int64);
begin
  FFVcGongdlxfz := AInt64;
  FFVcGongdlxfz_Specified := True;
end;

function BXmDaibxx.FVcGongdlxfz_Specified(Index: Integer): boolean;
begin
  Result := FFVcGongdlxfz_Specified;
end;

procedure BXmDaibxx.SetFVcHuifdh(Index: Integer; const Astring: string);
begin
  FFVcHuifdh := Astring;
  FFVcHuifdh_Specified := True;
end;

function BXmDaibxx.FVcHuifdh_Specified(Index: Integer): boolean;
begin
  Result := FFVcHuifdh_Specified;
end;

procedure BXmDaibxx.SetFVcJilbs(Index: Integer; const Astring: string);
begin
  FFVcJilbs := Astring;
  FFVcJilbs_Specified := True;
end;

function BXmDaibxx.FVcJilbs_Specified(Index: Integer): boolean;
begin
  Result := FFVcJilbs_Specified;
end;

procedure BXmDaibxx.SetFVcLaidhm(Index: Integer; const Astring: string);
begin
  FFVcLaidhm := Astring;
  FFVcLaidhm_Specified := True;
end;

function BXmDaibxx.FVcLaidhm_Specified(Index: Integer): boolean;
begin
  Result := FFVcLaidhm_Specified;
end;

procedure BXmDaibxx.SetFVcLaidrxb(Index: Integer; const Astring: string);
begin
  FFVcLaidrxb := Astring;
  FFVcLaidrxb_Specified := True;
end;

function BXmDaibxx.FVcLaidrxb_Specified(Index: Integer): boolean;
begin
  Result := FFVcLaidrxb_Specified;
end;

procedure BXmDaibxx.SetFVcLaidrxm(Index: Integer; const Astring: string);
begin
  FFVcLaidrxm := Astring;
  FFVcLaidrxm_Specified := True;
end;

function BXmDaibxx.FVcLaidrxm_Specified(Index: Integer): boolean;
begin
  Result := FFVcLaidrxm_Specified;
end;

procedure BXmDaibxx.SetFVcLaiy(Index: Integer; const Astring: string);
begin
  FFVcLaiy := Astring;
  FFVcLaiy_Specified := True;
end;

function BXmDaibxx.FVcLaiy_Specified(Index: Integer): boolean;
begin
  Result := FFVcLaiy_Specified;
end;

procedure BXmDaibxx.SetFVcLianxdz(Index: Integer; const Astring: string);
begin
  FFVcLianxdz := Astring;
  FFVcLianxdz_Specified := True;
end;

function BXmDaibxx.FVcLianxdz_Specified(Index: Integer): boolean;
begin
  Result := FFVcLianxdz_Specified;
end;

procedure BXmDaibxx.SetFVcShejdwmc(Index: Integer; const Astring: string);
begin
  FFVcShejdwmc := Astring;
  FFVcShejdwmc_Specified := True;
end;

function BXmDaibxx.FVcShejdwmc_Specified(Index: Integer): boolean;
begin
  Result := FFVcShejdwmc_Specified;
end;

procedure BXmDaibxx.SetFVcShengywjwz(Index: Integer; const Astring: string);
begin
  FFVcShengywjwz := Astring;
  FFVcShengywjwz_Specified := True;
end;

function BXmDaibxx.FVcShengywjwz_Specified(Index: Integer): boolean;
begin
  Result := FFVcShengywjwz_Specified;
end;

procedure BXmDaibxx.SetFVcShoulnr(Index: Integer; const Astring: string);
begin
  FFVcShoulnr := Astring;
  FFVcShoulnr_Specified := True;
end;

function BXmDaibxx.FVcShoulnr_Specified(Index: Integer): boolean;
begin
  Result := FFVcShoulnr_Specified;
end;

procedure BXmDaibxx.SetFVcShoulnrStr(Index: Integer; const Astring: string);
begin
  FFVcShoulnrStr := Astring;
  FFVcShoulnrStr_Specified := True;
end;

function BXmDaibxx.FVcShoulnrStr_Specified(Index: Integer): boolean;
begin
  Result := FFVcShoulnrStr_Specified;
end;

procedure BXmDaibxx.SetFVcYewzlmc(Index: Integer; const Astring: string);
begin
  FFVcYewzlmc := Astring;
  FFVcYewzlmc_Specified := True;
end;

function BXmDaibxx.FVcYewzlmc_Specified(Index: Integer): boolean;
begin
  Result := FFVcYewzlmc_Specified;
end;

procedure BXmDaibxx.SetFVcYonghid(Index: Integer; const Astring: string);
begin
  FFVcYonghid := Astring;
  FFVcYonghid_Specified := True;
end;

function BXmDaibxx.FVcYonghid_Specified(Index: Integer): boolean;
begin
  Result := FFVcYonghid_Specified;
end;

procedure BXmDaibxx.SetFVcYoub(Index: Integer; const Astring: string);
begin
  FFVcYoub := Astring;
  FFVcYoub_Specified := True;
end;

function BXmDaibxx.FVcYoub_Specified(Index: Integer): boolean;
begin
  Result := FFVcYoub_Specified;
end;

destructor SysException.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fthrowables)-1 do
    System.SysUtils.FreeAndNil(Fthrowables[I]);
  System.SetLength(Fthrowables, 0);
  System.SysUtils.FreeAndNil(Fcause);
  inherited Destroy;
end;

procedure SysException.Setcause(Index: Integer; const AThrowable: Throwable);
begin
  Fcause := AThrowable;
  Fcause_Specified := True;
end;

function SysException.cause_Specified(Index: Integer): boolean;
begin
  Result := Fcause_Specified;
end;

procedure SysException.Setmessages(Index: Integer; const AArrayOfString: ArrayOfString);
begin
  Fmessages := AArrayOfString;
  Fmessages_Specified := True;
end;

function SysException.messages_Specified(Index: Integer): boolean;
begin
  Result := Fmessages_Specified;
end;

procedure SysException.SetthrowableCount(Index: Integer; const AInteger: Integer);
begin
  FthrowableCount := AInteger;
  FthrowableCount_Specified := True;
end;

function SysException.throwableCount_Specified(Index: Integer): boolean;
begin
  Result := FthrowableCount_Specified;
end;

procedure SysException.Setthrowables(Index: Integer; const AArrayOfThrowable: ArrayOfThrowable);
begin
  Fthrowables := AArrayOfThrowable;
  Fthrowables_Specified := True;
end;

function SysException.throwables_Specified(Index: Integer): boolean;
begin
  Result := Fthrowables_Specified;
end;

destructor SysException2.Destroy;
var
  I: Integer;
begin
  for I := 0 to System.Length(Fthrowables)-1 do
    System.SysUtils.FreeAndNil(Fthrowables[I]);
  System.SetLength(Fthrowables, 0);
  System.SysUtils.FreeAndNil(Fcause);
  inherited Destroy;
end;

procedure SysException2.Setcause(Index: Integer; const AThrowable: Throwable);
begin
  Fcause := AThrowable;
  Fcause_Specified := True;
end;

function SysException2.cause_Specified(Index: Integer): boolean;
begin
  Result := Fcause_Specified;
end;

procedure SysException2.Setmessages(Index: Integer; const AArrayOfString: ArrayOfString);
begin
  Fmessages := AArrayOfString;
  Fmessages_Specified := True;
end;

function SysException2.messages_Specified(Index: Integer): boolean;
begin
  Result := Fmessages_Specified;
end;

procedure SysException2.SetthrowableCount(Index: Integer; const AInteger: Integer);
begin
  FthrowableCount := AInteger;
  FthrowableCount_Specified := True;
end;

function SysException2.throwableCount_Specified(Index: Integer): boolean;
begin
  Result := FthrowableCount_Specified;
end;

procedure SysException2.Setthrowables(Index: Integer; const AArrayOfThrowable: ArrayOfThrowable);
begin
  Fthrowables := AArrayOfThrowable;
  Fthrowables_Specified := True;
end;

function SysException2.throwables_Specified(Index: Integer): boolean;
begin
  Result := Fthrowables_Specified;
end;

initialization
  { IjstshWebServicePortType }
  InvRegistry.RegisterInterface(TypeInfo(IjstshWebServicePortType), 'http://iface.webservice.jstsh.sjtsoft.com', 'UTF-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IjstshWebServicePortType), '');
  InvRegistry.RegisterInvokeOptions(TypeInfo(IjstshWebServicePortType), ioDocument);
  { IjstshWebServicePortType.queryAllDq }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'queryAllDq', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryAllDq', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.closeMessage }
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'closeMessage', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'closeMessage', 'in1', '',
                                '', IS_NLBL);
  { IjstshWebServicePortType.updPwd }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'updPwd', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'updPwd', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'updPwd', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'updPwd', 'in2', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'updPwd', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.queryVoiceFtpUrl }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'queryVoiceFtpUrl', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryVoiceFtpUrl', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.Duanxhd }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'Duanxhd', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'Duanxhd', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'Duanxhd', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'Duanxhd', 'in2', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'Duanxhd', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.seatLogout }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'seatLogout', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'seatLogout', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'seatLogout', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.DuanxhdHistory }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'DuanxhdHistory', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'DuanxhdHistory', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'DuanxhdHistory', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'DuanxhdHistory', 'in2', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'DuanxhdHistory', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.querySeat }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'querySeat', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'querySeat', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.queryWorkload }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'queryWorkload', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryWorkload', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.queryAllNum }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'queryAllNum', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryAllNum', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.checkLogin }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'checkLogin', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'checkLogin', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'checkLogin', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'checkLogin', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.queryBXmGonggtz }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'queryBXmGonggtz', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryBXmGonggtz', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryBXmGonggtz', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryBXmGonggtz', 'in2', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryBXmGonggtz', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.queryAllCamera }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'queryAllCamera', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryAllCamera', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.queryMessage }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'queryMessage', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryMessage', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryMessage', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryMessage', 'in2', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryMessage', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.queryBXmXiaox }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'queryBXmXiaox', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryBXmXiaox', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryBXmXiaox', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.sendMessages }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'sendMessages', '',
                                 '[ReturnName="out"]');
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'sendMessages', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'sendMessages', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'sendMessages', 'in2', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'sendMessages', 'in3', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'sendMessages', 'in6', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'sendMessages', 'in7', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'sendMessages', 'in8', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'sendMessages', 'out_', 'out', '');
  { IjstshWebServicePortType.queryCallOutRecord }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'queryCallOutRecord', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryCallOutRecord', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryCallOutRecord', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryCallOutRecord', 'in2', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryCallOutRecord', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.savePhoneRecord }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'savePhoneRecord', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'savePhoneRecord', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'savePhoneRecord', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.TransformData }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'TransformData', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'TransformData', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'TransformData', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'TransformData', 'in2', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'TransformData', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.SetData }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'SetData', '',
                                 '[ReturnName="out"]');
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'SetData', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'SetData', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'SetData', 'in2', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'SetData', 'in3', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'SetData', 'in4', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'SetData', 'out_', 'out', '');
  { IjstshWebServicePortType.GetData }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'GetData', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'GetData', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'GetData', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'GetData', 'in2', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'GetData', 'in3', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'GetData', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.intervalMessage }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'intervalMessage', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'intervalMessage', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'intervalMessage', 'in3', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'intervalMessage', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.saveMessage }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'saveMessage', '',
                                 '[ReturnName="out"]');
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'saveMessage', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'saveMessage', 'out_', 'out', '');
  { IjstshWebServicePortType.queryAllMache }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'queryAllMache', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryAllMache', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.querySjzd }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'querySjzd', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'querySjzd', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.saveDaibxxToOtherPlatform }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'saveDaibxxToOtherPlatform', '',
                                 '[ReturnName="out"]');
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'saveDaibxxToOtherPlatform', 'in0', '',
                                '[Namespace="http://my.bjvsp.tongtech.com"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'saveDaibxxToOtherPlatform', 'out_', 'out', '');
  { IjstshWebServicePortType.seatLogin }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'seatLogin', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'seatLogin', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'seatLogin', 'in1', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'seatLogin', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.queryMacheAndCamera }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'queryMacheAndCamera', '',
                                 '[ReturnName="out"]', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'queryMacheAndCamera', 'out_', 'out',
                                '', IS_NLBL);
  { IjstshWebServicePortType.saveZxrz }
  InvRegistry.RegisterMethodInfo(TypeInfo(IjstshWebServicePortType), 'saveZxrz', '',
                                 '[ReturnName="out"]');
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'saveZxrz', 'in0', '',
                                '', IS_NLBL);
  InvRegistry.RegisterParamInfo(TypeInfo(IjstshWebServicePortType), 'saveZxrz', 'out_', 'out', '');
  RemClassRegistry.RegisterXSClass(IOException2, 'http://io.java', 'IOException2', 'IOException');
  RemClassRegistry.RegisterXSClass(IOException, 'http://iface.webservice.jstsh.sjtsoft.com', 'IOException');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfThrowable), 'http://lang.java', 'ArrayOfThrowable');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfString), 'http://iface.webservice.jstsh.sjtsoft.com', 'ArrayOfString');
  RemClassRegistry.RegisterXSClass(Throwable, 'http://lang.java', 'Throwable');
  RemClassRegistry.RegisterXSClass(InvocationTargetException, 'http://iface.webservice.jstsh.sjtsoft.com', 'InvocationTargetException');
  RemClassRegistry.RegisterXSClass(InvocationTargetException2, 'http://reflect.lang.java', 'InvocationTargetException2', 'InvocationTargetException');
  RemClassRegistry.RegisterXSClass(IllegalAccessException2, 'http://lang.java', 'IllegalAccessException2', 'IllegalAccessException');
  RemClassRegistry.RegisterXSClass(BXmDaibxx, 'http://my.bjvsp.tongtech.com', 'BXmDaibxx');
  RemClassRegistry.RegisterXSClass(SysException, 'http://iface.webservice.jstsh.sjtsoft.com', 'SysException');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SysException), 'messages', '[ArrayItemName="string"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SysException), 'throwables', '[ArrayItemName="Throwable"]');
  RemClassRegistry.RegisterXSClass(IllegalAccessException, 'http://iface.webservice.jstsh.sjtsoft.com', 'IllegalAccessException');
  RemClassRegistry.RegisterXSClass(SysException2, 'http://exception.core.sjtsoft.com.framework', 'SysException2', 'SysException');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SysException2), 'messages', '[ArrayItemName="string"]');
  RemClassRegistry.RegisterExternalPropName(TypeInfo(SysException2), 'throwables', '[ArrayItemName="Throwable"]');

end.