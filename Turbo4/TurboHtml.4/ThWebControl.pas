unit ThWebControl;

interface

uses
	Windows, Classes, Controls, StdCtrls, ExtCtrls, Graphics, Messages, SysUtils,
	Types,
	ThStructuredHtml, ThStyledCtrl, ThAttributeList, ThStyleList, ThTag,
	ThJavaScript, ThInterfaces, ThMessages;

type
	TThOnTag = procedure(inSender: TObject; inTag: TThTag) of object;
	//
	TThWebControl = class(TThWebControlBase, IThHtmlSource, IThJavaScriptable)
	private
		FOnTag: TThOnTag;
		FJavaScript: TThJavaScriptEvents;
    FDesignOnly: Boolean;
	protected
		function GetJavaScript: TThJavaScriptEvents;
		//:$ <br>Generate HTML for this control.
		//:: Default implementation calls GetTagHtml to generate HTML.
		//:: Subclasses may override.
		function GetHtmlAsString: string; virtual;
		//:$ <br>Generate HTML for this control.
		function GetHtml: string;
		//:$ <br>Use a tag to generate HTML.
		//:: Uses DoTag and Tag methods to generate HTML.
		//:: The default implementation of GetHtml simply returns the value of
		//:: this method.
		//:: Subclasses may override.
		function GetTagHtml: string;
		//:$ <br>Assemble HTML tag for the <td> cell containing this control.
		//:: Fills tag object with HTML representative of the <td> cell
		//:: containing the control. The standard HTML generator uses a
		//:: table-layout and places every control inside of a <td> cell.
		//:: Customize the <td> tag by overriding this method, customize the cell's
		//:: contents by overriding the Tag method.
		procedure CellTag(inTag: TThTag); virtual;
		//:$ <br>Invokes the OnTag event.
		//:: Invokes the OnTag event, if assigned. GetTagHtml calls this
		//:: method immediately after calling the Tag method.
		procedure DoTag(inTag: TThTag);
		procedure SetJavaScript(const Value: TThJavaScriptEvents);
		//:$ <br>Copy style information to an HTML tag.
		//:: Fills tag object with style information. Specifically, the
		//:: StyleClass is copied into the <class> attribute, and the Style
		//:: object fills the <style> attribute.
		procedure StylizeTag(inTag: TThTag);
		//:$ <br>Assemble HTML tag.
		//:: Fills tag object with HTML representative of the control.
		//:: Calls StylizeTag and ListJsAttributes. Subclasses override
		//:: this method to provide custom HTML.
		//:: This HTML from this method is used as the content for the <td> cell
		//:: generated by the CellTag method. Customize the <td> tag by overriding
		//:: CellTag; customize the cell's contents by overriding this method.
		procedure Tag(inTag: TThTag); virtual;
	public
		constructor Create(inOwner: TComponent); override;
		destructor Destroy; override;
		//:$ <br>Add style margins.
		//:: Add box margins from the control's Style property to the input
		//:: margin rect. Each element of the rect represents the width
		//:: of the margin on the corresponding side.
		procedure AdjustMargins(var ioRect: TRect); virtual;
		//:$ <br>Copy JavaScript information to an attribute list.
		//:: Fills list object with JavaScript information. Specifically, the
		//:: object in the JavaScript property is asked to compose event data into
		//:: HTML attributes and add them to the list.
		procedure ListJsAttributes(inAttrs: TThAttributeList); virtual;
		//:$ <br>Modify an HTML document.
		//:: Outputs HTML into a document. Default implementation
		//:: simply adds the value of the Html property to the body of the
		//:: document. Subclasses override this method in provide custom processing
		//:: when an object is published.
		procedure Publish(inDoc: TThStructuredHtml); virtual;
	public
		//:$ <br>HTML generated to represent this control.
		//:: HTML representing this control is generated and returned as a
		//:: string.
		property Html: string read GetHtml;
		//:$ <br>Event fired after a tag is prepared for this control.
		property OnTag: TThOnTag read FOnTag write FOnTag;
	published
		property DesignOnly: Boolean read FDesignOnly write FDesignOnly;
		//:$ <br>Collection of JavaScript events.
		property JavaScript: TThJavaScriptEvents read GetJavaScript
			write SetJavaScript;
	end;
	//
	TThWebGraphicControl = class(TThStyledGraphicControl, IThHtmlSource,
		IThJavaScriptable)
	private
		FOnTag: TThOnTag;
		FJavaScript: TThJavaScriptEvents;
		FDesignOnly: Boolean;
	protected
		//:$ <br>Generate HTML for this control.
		//:: Default implementation calls GetTagHtml to generate HTML.
		//:: Subclasses may override.
		function GetHtmlAsString: string; virtual;
		//:$ <br>Generate HTML for this control.
		function GetHtml: string;
		function GetJavaScript: TThJavaScriptEvents;
		//:$ <br>Use a tag to generate HTML.
		//:: Uses DoTag and Tag methods to generate HTML.
		//:: The default implementation of GetHtml simply returns the value of
		//:: this method.
		//:: Subclasses may override.
		function GetTagHtml: string;
		//:$ <br>Assemble HTML tag for the <td> cell containing this control.
		//:: Fills tag object with HTML representative of the <td> cell
		//:: containing the control. The standard HTML generator uses a
		//:: table-layout and places every control inside of a <td> cell.
		//:: Customize the <td> tag by overriding this method, customize the cell's
		//:: contents by overriding the Tag method.
		procedure CellTag(inTag: TThTag); virtual;
		//:$ <br>Invokes the OnTag event.
		//:: Invokes the OnTag event, if assigned. GetTagHtml calls this
		//:: method immediately after calling the Tag method.
		procedure DoTag(inTag: TThTag); virtual;
		procedure SetJavaScript(const Value: TThJavaScriptEvents);
		//:$ <br>Copy style information to an HTML tag.
		//:: Fills tag object with style information. Specifically, the
		//:: StyleClass is copied into the <class> attribute, and the Style
		//:: object fills the <style> attribute.
		procedure StylizeTag(inTag: TThTag);
		//:$ <br>Assemble HTML tag.
		//:: Fills tag object with HTML representative of the control.
		//:: Calls StylizeTag and ListJsAttributes. Subclasses override
		//:: this method to provide custom HTML.
		//:: This HTML from this method is used as the content for the <td> cell
		//:: generated by the CellTag method. Customize the <td> tag by overriding
		//:: CellTag; customize the cell's contents by overriding this method.
		procedure Tag(inTag: TThTag); virtual;
	public
		constructor Create(inOwner: TComponent); override;
		destructor Destroy; override;
		//:$ <br>Copy JavaScript information to an attribute list.
		//:: Fills list object with JavaScript information. Specifically, the
		//:: object in the JavaScript property is asked to compose event data into
		//:: HTML attributes and add them to the list.
		procedure ListJsAttributes(inAttrs: TThAttributeList); virtual;
		//:$ <br>Modify an HTML document.
		//:: Outputs HTML into a document. Default implementation
		//:: simply adds the value of the Html property to the body of the
		//:: document. Subclasses override this method in provide custom processing
		//:: when an object is published.
		procedure Publish(inDoc: TThStructuredHtml); virtual;
	public
		//:$ <br>HTML generated to represent this control.
		//:: HTML representing this control is generated and returned as a
		//:: string.
		property Html: string read GetHtml;
		//:$ <br>Event fired after a tag is prepared for this control.
		property OnTag: TThOnTag read FOnTag write FOnTag;
	published
		property DesignOnly: Boolean read FDesignOnly write FDesignOnly;
		//:$ <br>Collection of JavaScript events.
		property JavaScript: TThJavaScriptEvents read GetJavaScript
			write SetJavaScript;
	end;

function ThAttr(const inName, inValue: string): string; overload;
function ThAttr(const inName: string; inValue: Integer): string; overload;
//function ThGetHeightAttributeValue(inCtrl: TControl): string;
//function ThGetHeightStyleValue(inCtrl: TControl): string;
procedure ThPaintOutline(inCanvas: TCanvas; const inRect: TRect;
	inColor: TColor = clBlack; inPenStyle: TPenStyle = psDash;
	inPenWidth: Integer = 1);

implementation

function ThAttr(const inName, inValue: string): string;
begin
	if (inValue = '') then
		Result := ''
	else
		Result := ' ' + inName + '="' + inValue + '"';
end;

function ThAttr(const inName: string; inValue: Integer): string;
begin
	Result := ThAttr(inName, IntToStr(inValue));
end;

{
function ThGetHeightAttributeValue(inCtrl: TControl): string;
begin
	case inCtrl.Align of
		alLeft, alClient, alRight: Result := '100%';
		else Result := Format('%d', [ inCtrl.Height ]);
	end;
end;

function ThGetHeightStyleValue(inCtrl: TControl): string;
begin
	case inCtrl.Align of
		alLeft, alClient, alRight: Result := '100%';
		else Result := Format('%dpx', [ inCtrl.Height ]);
	end;
end;
}

procedure ThPaintOutline(inCanvas: TCanvas; const inRect: TRect;
	inColor: TColor = clBlack; inPenStyle: TPenStyle = psDash;
	inPenWidth: Integer = 1);
begin
	inCanvas.Pen.Width := inPenWidth;
	inCanvas.Pen.Color := inColor;
	inCanvas.Pen.Style := inPenStyle;
	inCanvas.Brush.Style := bsClear;
	inCanvas.Rectangle(inRect);
end;

{ TThWebControl }

constructor TThWebControl.Create(inOwner: TComponent);
begin
	inherited;
	FJavaScript := TThJavaScriptEvents.Create(Self);
end;

destructor TThWebControl.Destroy;
begin
	FJavaScript.Free;
	inherited;
end;

procedure TThWebControl.AdjustMargins(var ioRect: TRect);
begin
	with CtrlStyle do
	begin
		Inc(ioRect.Left, GetBoxLeft);
		Inc(ioRect.Top, GetBoxTop);
		Inc(ioRect.Right, GetBoxRight);
		Inc(ioRect.Bottom, GetBoxBottom);
	end;
end;

procedure TThWebControl.ListJsAttributes(inAttrs: TThAttributeList);
begin
	JavaScript.ListAttributes(Name, inAttrs);
end;

procedure TThWebControl.StylizeTag(inTag: TThTag);
begin
	inTag.Add('id', Name);
	Style.ListStyles(inTag.Styles);
	inTag.Add('class', StyleClass);
end;

procedure TThWebControl.Tag(inTag: TThTag);
begin
	StylizeTag(inTag);
	ListJsAttributes(inTag.Attributes);
end;

procedure TThWebControl.DoTag(inTag: TThTag);
begin
	if Assigned(FOnTag) then
		FOnTag(Self, inTag);
end;

function TThWebControl.GetTagHtml: string;
begin
	with TThTag.Create do
	try
		Tag(ThisTag);
		DoTag(ThisTag);
		Result := Html;
	finally
		Free;
	end;
end;

function TThWebControl.GetHtmlAsString: string;
begin
	Result := GetTagHtml;
end;

function TThWebControl.GetHtml: string;
begin
	if DesignOnly then
		Result := ''
	else
		Result := GetHtmlAsString; 
end;

procedure TThWebControl.CellTag(inTag: TThTag);
begin
	with inTag do
	begin
		case Align of
			alLeft, alClient, alRight: Add('height', '100%');
			else Add('height', Height);
		end;
		case Align of
			alTop, alClient, alBottom: ;
			else Add('width', Width);
		end;
		Add('valign', 'top');
	end;
end;

procedure TThWebControl.SetJavaScript(const Value: TThJavaScriptEvents);
begin
	FJavaScript.Assign(Value);
end;

procedure TThWebControl.Publish(inDoc: TThStructuredHtml);
begin
	inDoc.Body.Add(Html);
end;

function TThWebControl.GetJavaScript: TThJavaScriptEvents;
begin
	Result := FJavaScript;
end;

{ TThWebGraphicControl }

constructor TThWebGraphicControl.Create(inOwner: TComponent);
begin
	inherited;
	FJavaScript := TThJavaScriptEvents.Create(Self);
end;

destructor TThWebGraphicControl.Destroy;
begin
	FJavaScript.Free;
	inherited;
end;

procedure TThWebGraphicControl.StylizeTag(inTag: TThTag);
begin
	Style.ListStyles(inTag.Styles);
	inTag.Add('class', StyleClass);
end;

procedure TThWebGraphicControl.ListJsAttributes(inAttrs: TThAttributeList);
begin
	JavaScript.ListAttributes(Name, inAttrs);
end;

procedure TThWebGraphicControl.Tag(inTag: TThTag);
begin
	StylizeTag(inTag);
	ListJsAttributes(inTag.Attributes);
end;

procedure TThWebGraphicControl.DoTag(inTag: TThTag);
begin
	if Assigned(FOnTag) then
		FOnTag(Self, inTag);
end;

function TThWebGraphicControl.GetTagHtml: string;
begin
	with TThTag.Create do
	try
		Tag(ThisTag);
		DoTag(ThisTag);
		Result := Html;
	finally
		Free;
	end;
end;

function TThWebGraphicControl.GetHtmlAsString: string;
begin
	Result := GetTagHtml;
end;

function TThWebGraphicControl.GetHtml: string;
begin
	if DesignOnly then
		Result := ''
	else
		Result := GetHtmlAsString;
end;

procedure TThWebGraphicControl.CellTag(inTag: TThTag);
begin
	with inTag do
	begin
		case Align of
			alLeft, alClient, alRight: Add('height', '100%');
			else Add('height', Height);
		end;
		case Align of
			alTop, alClient, alBottom: ;
			else Add('width', Width);
		end;
		Add('valign', 'top');
	end;
end;

procedure TThWebGraphicControl.SetJavaScript(const Value: TThJavaScriptEvents);
begin
	FJavaScript.Assign(Value);
end;

procedure TThWebGraphicControl.Publish(inDoc: TThStructuredHtml);
begin
	inDoc.Body.Add(Html);
end;

function TThWebGraphicControl.GetJavaScript: TThJavaScriptEvents;
begin
	Result := FJavaScript;
end;

end.
