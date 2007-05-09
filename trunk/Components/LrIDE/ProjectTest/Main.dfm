object MainForm: TMainForm
  Left = 331
  Top = 110
  Width = 795
  Height = 416
  Caption = 'MainForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Shell Dlg 2'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TreePopup: TPopupMenu
    Left = 28
    Top = 36
    object NewFolder1: TMenuItem
      Caption = 'New Folder'
      OnClick = NewFolder1Click
    end
    object AddItem1: TMenuItem
      Caption = 'Add Item'
      OnClick = AddItem1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object AddServer1: TMenuItem
      Caption = 'Add Server'
      OnClick = AddServer1Click
    end
    object AddDatabase1: TMenuItem
      Caption = 'Add Database'
      OnClick = AddDatabase1Click
    end
  end
  object OpenPictureDialog: TOpenPictureDialog
    Left = 104
    Top = 36
  end
  object TreeImages: TPngImageList
    PngImages = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002A744558744372656174696F6E2054696D650044692034204D727A20
          323030332031393A31383A3035202B30313030E27A682B0000000774494D4500
          0000000000000973942E000000097048597300000B1100000B11017F645F9100
          0002B84944415478DA8D936D4814511486DFD90F6D5D7605D3C84A282DF3571A
          2C9691156125964810461926F4A32011334D0B2CB0C4142DD30C69250321A52C
          96A22C75C11003ED4728B6F995AE296AAEFBA9BB39FBD99969160DFCE1858739
          F7DEF3BE33F7CCB90CD631FAAAD1617620C9EB0538A667D074B91E05B46562D6
          A167B415B027661B65525908BFF0F60E83B4125CA0B0632D0366408D83260B92
          28DEE772214C220B8D3D926B10FB130483720A1BFE33E8ADC1B064E3DEE80079
          38822312101A998A00C52688C572DAB513CB441834C50A9CBE871A9A3CF11BF0
          CFAE2A780FE7D9E05ED6C1619982DDA803BB380FF89C70BB9DD899984F59A178
          7D2B1C67CA504B933AA6FBA1C805A952BC252E87D17F29C1FE4BDDB09BDA20DD
          20874CA140605010556E197323FD08893C8600791C5E154523BD5C30E8AC602C
          87AEF6064B8376A3B33C18498563B4DE03B85DBC90C7C7F2E87513D8AECA474B
          412CCE550A061F4A255F55679B55615107D05EB615C76FF693480B78C8C0CDAE
          1878584C0FEBB12D3E132FAEA723E38160D05A8CC68898A319F1E7D5D28FA551
          482EEAA25AB5F102789DC293FB02377C2E2FCC0E25DED73520F39160A0CE4556
          B8525C75A2F05DC8A7CA149CBCA1A182BF21A17395011753BA8881D5C842F3EC
          33B26A57FE82A2A930F065548C2A7941DF83D4BC46C0DACC579E0784C807B3C9
          09F3E42286BF2F607C6269365B8D16DAACE70CC43557706DD78ECDF7D9A53971
          5A5E35193C27110BF3EF253AB70DD37A87CF68745947A6A0BBDB8A29D22C1043
          84C6DF07C1DAC77B8C96990171CAC55318EDEBC2E4CF3F1E83C163189BC56883
          16E3F356BE8B2C849EF846CC10F37E03893A3F2607F6A1DBAC07B6013D069FB6
          F3C94641C425FF2066091B7789FE9D0DBED5ADCCDD9404228E3B16F18B1824CC
          8483B00ABDEC13586961617022A58048687EEEED2E61DF8735C65F4F692CB9EC
          72472A0000000049454E44AE426082}
        Name = 'PngImage0'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D65004D6F20313520417567
          20323030352031313A33313A3134202B30313030D9FE197A0000000774494D45
          000000000000000973942E000000097048597300000AF000000AF00142AC3498
          000002194944415478DA8D92CB6B135114C6BF891B1171EBCAF6CFF0B111E942
          57A18B22080A22B56971D17663427D4C4AD34C04B5536B9AD6421214A1DA6228
          F85AD4A236881B71ADC4A2E842BB118AA29DC9DCEB77E6D17642150F7C9C7B2F
          F7FCEE795C03B4C2D4532DDE759BE2E044DE09FCBAE3E2EB97466AF6D6A5396E
          D7280FA11911209D3A8ABFD9E0C82CF6ECDE85FAD2C2D0D2C3729547AB11645B
          80D61A9292A78275DABA8FBED349DC9D5FC4CB67B50BCF1F552B11440086557A
          A232BDC762AF4AA0478A520160ABD9974F24E9EAD4771F90B51794D99FDC16E0
          11D0A41CD7C3DA8F5FB04B0FB43D7C26C72B52CA4A0018AB2973A0136FDE7E64
          209BC948E99FC3121C56BA4E71898E036D30F3554CE4BAC7B92D51EF62007935
          789D01F23A1791977E484666BE829BB9B337786D927AEF03CCEB35951DECC48B
          571FFCE6292D694B2654E8B59140C721666055516C050C5D9953A3E7BB507FDD
          F001ADC1520612068E1C6CC7B05521A0678227C50D40C6BAA7ACCC712C0B406F
          066E7AED67208011AB8CE2682A0E18C8DE5163E6492CD61B610941A09F0937B2
          860058428E194CE65B00FDE66D65674FE1F1F24A344434BDA0693E48075338BC
          BF0DF9421953566F1CD0939E51D3856EACFE74B7FC03F8D94413F1FF0275ED6A
          05D3565F0C807317677422914010B291440808470BED4F67074BE11462FF40AC
          9DEAA2F649BFF16F936A3E53F3D4A708B093DA1BFAFFB1DFD437F17F0046E947
          276705FA4C0000000049454E44AE426082}
        Name = 'PngImage1'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D65004D6F20323920536570
          20323030332031363A32313A3334202B303130303646119F0000000774494D45
          000000000000000973942E000000097048597300000AF000000AF00142AC3498
          000002D54944415478DA8D936948545114C7FF3393B3A569306D904C3859A8A5
          6665A06245CAA8651BA225690B648AD206261114047D09823E484569D9F6C128
          95701D1D973151099734C834CB19ADD171A986B1197DEFDDD77DA343BC20E8C0
          FF9E7B0F9CDFBD70FF47021A0FDB66782F850C3C4700C283F788E7015A2384B8
          CF7403669EE37292B53ADA3641E5920880671D337CEA161F38E759083D82280A
          EE1EE14CF71C5DE44A39CA1ACDCC997D0105B454466576039EB64FF3C9C12ABC
          EBED01C7012C510817836379106E9EDE3E07966510B97B27AADE7C65B2F7EB0A
          69DB3DAA41012079D2364592372D45D7DB2E38ED36D8DFDF82EC573FA4521E73
          AA1DF0D25D0491C810ADDF851A9385C93E187887F6DDFD03689D247B43BDD1D9
          DE076B5514347E1CE40A40A50494349BC7E47004BE40DCA124D4B48C30D98737
          88018F5B6C2429CC07A6961E845A2EC04A9F2B57A8316B9F02CB0FC0470DF48E
          EB91985F89DAC6CF4C4ECA4631A0A4699C2486FBA2D96042AABA0858BF079049
          81D91F78FDEA0696F9FE84D9EA87982BD3A86B186472D382C48047462B498858
          8EBAEA361C57DC06B4910B5FC1BAD0DC5C8A396E185F26B588BB360C43FD1093
          7BE46F40C337124F0186CA56C4B265D0F9BB6859E906941B4BDC5FF861C975A4
          E55F46BD6188C94B0F16038A0D63247EAB06A64A235E763AA05FD98D93313CFA
          6D76DC2C1FC1289784E8003F9C2E388A86BA4126EF58881850543B4AF4DB5720
          21AB14766D20A2FD5548CF0887C53A874B578DD0ACF1C644EF10BA2B3261ACFD
          C89CCDDC2C063CA8B690D8080D42728D5817B41AAAE969646445E17971072625
          0AB04E06B6B1EFE82B3980A6DA01E6DC895031E07EA59924C4AE85C3C90A47EA
          426A4389142CB5A3442A75DB99A38B5A2D477D451F73FE54980880C2979F78B9
          5CB630303C711B5F1824CF402DD4A9AD6976399C4C7ECE36919585D052A550F9
          5349F1EFE01735B2384C160F80FE19562DE6FF0997679C7F03B02E742ABC6F8C
          9E0000000049454E44AE426082}
        Name = 'PngImage2'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D65004672203135204E6F76
          20323030322031303A30383A3239202B30313030F5A262C60000000774494D45
          000000000000000973942E000000097048597300000B1100000B11017F645F91
          0000030D4944415478DA4D536B485361187ECEDCE6E6A6CDDBC2BB245E428B42
          A84051EA4F5850226510545A41574A4A23228CFAA95088148156F6C7A80CB1C8
          42A89839F1523663EA9C73E17426CD5DBCED7A76D67B366B7EF070CEF79DF779
          DEF77BCEFB32D8B88EAA32E077D548E3A2CB64724916E7E702CE4587DE6D99FB
          00536F0BF4CF6628CA4B08FCA330FFC955DAEA7825D3BCAB385B268A16C1F887
          8375C903D6E581D766C7CA84DECECD7CBB89C1DB1D14BD44F08705AA26AAB372
          A54F4A4A3218F502A0FFAAC7266E159048C04688B02690021CC51BA758FCECAC
          C3C4A317C4B210380695BD19F1E9B163872B0A645D06C0EA04724C1AE86A15F0
          33427419181C79CD27F3012C3DB5238BE8BB7E16CE79155F0983F20F0F0E9C28
          AD31F925D02E06824565D90CD05D518085086FE7C438D666A55C6ED220112BBD
          F73F6E85B1BD9982758CA44AA5AB385E94DB3EE621AE20684F366781FE6A1C10
          21C5BB59010E359B28BB3324E0A4E748CF3034F58D24F08949B834E4CB2B2E10
          F6CD78428E7001E4C5F8317151411B217AC893FD0DC650052C0B2C2F03D3DA79
          F45FB84F012F99F8F36ACFE69D79E2F1055217304101A5528EFABD32F8E8CA63
          14DFFA8ACCF152663F1DD86DC02F9D1943979F92401B23A9ECD6A61615E61B2C
          9EF09F5D724111702033490E8D99BF167DE3D8B00793AA01E81A7A28F83983D2
          96C694D2925AB35B18EA0F0E2853D8D05DB705104B316E9722FFCE14B0660F95
          EF70003F9ADA61550F13A18341CEE91CF1B68A015F66766C8023B68F43798108
          9DE792E9BB0C264A9A714D477F7D1E58A5DE989F364373E32302EC7B0AF8C2DB
          1689C2BBA790BEFB21D2528541A3FC026CDD91829C2419BAD4BF01C324E02113
          6D8B4E8CDEEB80CB44A6E00D41CFAC77632C72CF9C44EABE5B484C4A446424E0
          A696F7127C041719689B3343D7F499C8540AF8FB7F0F3552684510121099BC07
          49C507119DB71D51CA9460352BB3B3B00E18611B7453D9FC30A909A3047BA895
          C38B178921A4117209E9EB7BBE3DC939F064BA0BE608AB08DABD711AC3D32922
          C8095104F1FA393FC26BEB4476E338FF054A0C50C9ABF5BE2B0000000049454E
          44AE426082}
        Name = 'PngImage3'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D65004D6920313720417567
          20323030352031313A34353A3131202B303130303ECCAB370000000774494D45
          000000000000000973942E000000097048597300000AF000000AF00142AC3498
          0000030A4944415478DAA5D35B4853011C06F06F3ACD5CDA9C6D59596C566A22
          E430684929A999A06945216464A4594486A9454A6A6942742F92A848A22C159B
          74DD2A0B43BA989253D786F3AEA5D68E6EEA2E9E73B69D532CE8A12888BEC7FF
          C3EFE5FF7D1CFC6738BF1EE406D68750937B9A47ED8984895C6AA526C192D6EE
          790CF588A1BDAE551D0D36FE11E864D984DBEA9CCAD7DA557C81E8164C96C5D0
          F416404F4EC161A5B0CC4E11215EF377CAF3E7297E039A1936A9469D2EB7B828
          B8FC093978F38B316966D0A57D808E3103864C2C984940E85A6B0BB5A76C6E38
          B5E8F14FE0A1869DF38E3CAB33CC281388AC551073D6C37D561FBA9933203F9F
          C7EB6113FAE81A18A6CCA01DB558F1E5D8F8C8B03068E49E6CDC099C500C1DEB
          F60B2F360FD54312588830AA0E5CAE032CEB8AFE49120D03343A2D8F3066AFC3
          74EF4104056C065E5515EBE4F1254E20E3E185368EB065F9B4FE1CE2427B10E4
          1E01812783AF163BEAFBA6F1A2DF8A8F7A379870178C4736445C16FEEDA5ADAD
          D70AC39DC09DF6A7340FA36E5E333D30D23F8E219D1E835A02C2051248D76D42
          A7CD1727DF50B0902D60F949F03126403C2636ABCACBBD9C405E513EC35A688E
          4C26038FC7034992B0D96CE07038F8D0AA82C1EE8E9529D9A8D0C7E3ADCA0A11
          9101D157A1F963F5B61F40744C0C9B9B9303B1588CC6C646A8D56A0C0E0EC068
          9C405A5A1AA2A222515D7B1F82704F0C528150AA6E82EE9BDBD6537949EA04F2
          0BCB88D5B2B0390A8502E9E9BB20954A9199B9170E1B0949C012ECCFDA07A5F2
          0DDAB55AF0259E60C5AD282958574ABEDF5EE4044C56FB95438547326131BBC4
          C6C660EAFBCFA3E23640F1AA09AAE737B0322212915B76C3C31B385D5486F549
          6BE9E40C6221341BF53F8BD4354C292F5E2E889F4939B026B50821C13ED08D01
          D7F352E13B7B16A20F5F05C3022D152548DB79F0C98A65DE89BF55B9EB13F5EC
          E2D9DC587154960B3F2010444713F86E26F8F27978F9440917372E22C2A59A1D
          A9C9A17F1C93D1445596961E4F268C14CF7F2E9FF50F8DA6EB9B3FF51C4891D9
          4224DEBD7E22C1D6BFAEF15FF30D4E975F2067CD046C0000000049454E44AE42
          6082}
        Name = 'PngImage5'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558744372656174696F6E2054696D65004D6920313720417567
          20323030352031313A34353A3131202B303130303ECCAB370000000774494D45
          000000000000000973942E000000097048597300000AF000000AF00142AC3498
          000003254944415478DAA5D35B4853011C06F06F1E6FE9A6D3B6A969B6146793
          0CD11165C9588517D28556941514F51045F72451324B0BA2FB434157B0945474
          965A465969A9496A99696E36A7B6725E3697739B6E67DB39C182A0A487E87BFC
          3FFC1E3EBE3F03FF19C69F07999EF6D3765B76B78DD853B5464BC4B4D500DA32
          AD0CA2ACB514C9BA597A7CD1F7BF020A9A5E5BDC7DA4A4B97739DB9F770F4673
          383EA972316E998263DA0AA1DDAA8D62CDDB21CB09AA9B05B451B4B4BC7B97CC
          EC52E7CA9E94C17B5E3E0C260A9F7BABF151A787DA488332005CA2C2B6D8BE29
          A3E15CE8A35F40CD279AD36AB9D8A7F738E3CF9B2E059F910477E60094D40558
          BE5D46F3B011036439F45326908E0A88464F4E6886B9919ACA65134EE0749DFA
          A432302EDFA4AEC742411E62AC5570757580A6090C1A2C681822A130D74267AF
          C28CEA3022C33280C6D2FC3E59728113D8597DA953EF5317438E15233EAA0322
          CF5444706818AC768C9BED50EA6D78D24FE3F9703148F703E0B9D208E92A7CFF
          FE665E9C13482FCB3613A1455EA1FE5C44CD15237C2C19B4CE17FD835F10181C
          02E30C098717070C2E17051F56433728005FC737755EBBC67202AB8B8E9A1D21
          77BDC27C42B05770166F4A1458307F21A452A9B3E0969616B4B7B763543F8AD8
          D40454BEB341FE7AC6D453B6E527B0F2F285AEB1B0AC257CEF60EC14ECC1E42B
          26925648A1520D40A3D1402C16832008CC5848D4D43C42684C184A1B158A0785
          5942279096F3B9B0D6EFEA714FC4E384C40D73BA8C70311BC0E106422291C046
          D2206D56B80DAD07BCA271BF55846509E9EF562D0D12390169B63CE083C7C33E
          35C5F6DD1AB905B1B61750B63DC3A982F3F01D0A86C353887EA2028697D148D8
          9782F6AA3E08139B5EB058CC35BF86B426E7EB86B7EEFBCB088F00E27A4A069A
          EE3C466EDE69F4DCF241E2C17468E553A8A88F468CF715C41F3C036D73C96B5E
          825CFCDB94E3F60CAE37F91DBB2D5A31C24EC639F4773C87303C021EBD995877
          68375ED64FE0E1538A5AC9AFA6E02318DF9C250F9EF54C011B1B796C4ABD777B
          9AE7B6480E8FDFF3B1D365B8BB85C1B53FA598824CADAC694C123552ED368709
          F38D4EA86601FF9A1FEED461207A8D58630000000049454E44AE426082}
        Name = 'PngImage5'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002A744558744372656174696F6E2054696D65004D692035204D727A20
          323030332031373A30313A3035202B303130308C96156A0000000774494D4500
          0000000000000973942E000000097048597300000AF000000AF00142AC349800
          0002CD4944415478DAA5936B48935118C7FF9B6F5EDAD48C243030E72D35FD30
          626E2A4E655220196589821F464A52521021F9A91118246444217D480D09A614
          2568346509E57D5EDAAB496AA94C85E9D4F9EEE6F6CEE9EB3A4E08825144E7CB
          393C9CF3E3779E0B0FFFB978FE82F5F5FDE90E87F54E44843095A2F8C7398E13
          7A3CBB70BB5997CBC5AEADAE9AA72D16E64947876AD02F40ADD63B4B4BC587B7
          B600960579B80B8F670F3B3B7BB058EC3099183435A9CDDDDD0F22FD025A5BA7
          388924956FB1D8B0B9E900C7ED3FB4C16C3693DD8AC9C96F04B26A1F19791EEE
          17D0D232EE96CBCF042D2F33585961E0F572B0D9ECB05AAD04C06071D100A3D1
          68191A6A38EA17D0D636E1C9CB4B3E64B7B344DF83EDED3DACAF3B88CD16D6D6
          1862B2099D6ED4D9DB5B2FF40B18185862D3D2A2834D26176666D6E1747A60B7
          DB7C060CC3C06030606161C14AD34D113E40464606151717779A1CDD2CCBCAD2
          D3B35E1A0C73FCA8A893C8CD2D4450D0314C4C2C6363C34C2C36415114687AC2
          D5D35327F0018A8A8ADA4522D125994C06814040B4DD24E33BE0F178E4220D3E
          3F084AE50DCCCFDB303BBB4AF475989BFBE1A4E9E6832FC8E572B6A6A6263826
          26067D7D7D989A9AC2D2D2A22FE34AA512393972BC7BDB8EE4E474EC79C3D1D9
          394CAA60726AB50F0F0052A9F4914AA5AAD66834A8A82887582C4665E575703B
          6E8862E371F35615BABA0631393D0D51743402A9136868503BF4FAC6B05F4954
          28146F1212128AF3F315B03BBCC8395B08CD671D686D33A49972C8AF5C437018
          E9D27B7538979987DADAD6A76363CF6EFF5685828282B694A4C4D2EC32155292
          22F0DD4CBAB2BA8413848707E4DE7D41F481D1C6FBBBCA92B22E8924F182DF59
          B85878FE6356F9E3FC23B189D8F8AAF3BEAEBB9A2195C976B70322B58121C121
          F3FA9E924FFDC3EFFF344CFCCBC5C51F028551D956E3CCAB2EADB66A3F782A31
          3E3034348C1AFFA277FD751AFF65FD049F0A54206D0C4CFE0000000049454E44
          AE426082}
        Name = 'PngImage6'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002A744558744372656174696F6E2054696D65004D692035204D727A20
          323030332031373A30313A3035202B303130308C96156A0000000774494D4500
          0000000000000973942E000000097048597300000AF000000AF00142AC349800
          0002BA4944415478DAA5915F4853511CC7BF732E75CDC9366D35D3084A5034CD
          D207C93F8308F762540A06BDFB12A8E1430FA1945A0F090699E03F52F01F19D5
          40523485591BDA2C959A1A4C1DA2CECDEDDEED6EF3CE3BEFEC2814513382BE0F
          E770E0FC3EE7FBFD1E01FE5382FDA5A1E17DB6C7E3BA23934952C3C3C3943CCF
          4B386E177E3FBBBDBDCDDAAC56C73C4D538D5A6DB53E24A0A7E7B3AFB4F4BCD8
          EB0558166470171C17442010044D33D8DCA4D0DEDEE3181EAE8B0B09E8EDFDC2
          6765A586D1B41B4EA7073CBF3FE886C3E120BB0B73732602B1325353CD312101
          9D9DD3FEBCBC0B11ABAB14363628ECEDF170BB19B85C2E02A060B1AC607D7D9D
          36189AE421017D7DB39C5A9D2C621896D8E7B0B31384DDEE216EBCB0D928E2C4
          89C9C98F3E9DAE411212D0D1F18951AB33A35757E983BC72F91124264691D7BD
          60182FAC563B0C86196F6B6B5574484077F7B42737374D623259417E0152A99B
          9449C16C5E864AA53A701516260A8E8D0D4636353505FE00B4B519DD858517A5
          81004B8681FEFEE748483889A2A2A2834B7ABD1E46A3112B440A85E27A4D4DCD
          EC6F254E6EE5E4A4C7AEAD792193093033338C82821C2C2D2D935237909F9F0F
          A15008963879F35ABB6DB19835CDCDCF267E7130B5595C9CAD5C5EB6432C1692
          C28648760AB171C7A156AB11E0F6C0057620B2DC00C46968797BCEF4A8AE22F5
          27A0B676A4312F2FB35C2A1593338BC5451D74BA11DC7FF018319678F091C930
          0B07E01E4F43EE6D0D8CAF16F79CA6D9484D3538C18F2C95952F6E015C895C1E
          9DAED124C777753D0DBF7BAF1E5FDBA4B8527E0D5B0B0C0646D39071F40972CA
          EBB1F5A17BE258EE42BE0087A8ACACECB2F2846A38E54C923062FE26AE569461
          7CD48997837E5FC1D9A1084893ECA5550BF18702F65552527249A93AFD90DDF8
          96A5F06BFD3641C63B93EB54758A552B8A92C0D73283A5BF02FE45DF01CEBA52
          2078FB6C9E0000000049454E44AE426082}
        Name = 'PngImage7'
        Background = clWindow
      end>
    Left = 104
    Top = 88
    Bitmap = {}
  end
end