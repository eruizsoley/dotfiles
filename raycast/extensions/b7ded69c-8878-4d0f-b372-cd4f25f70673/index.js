"use strict";var m=Object.defineProperty;var A=Object.getOwnPropertyDescriptor;var y=Object.getOwnPropertyNames;var B=Object.prototype.hasOwnProperty;var P=(n,o)=>{for(var l in o)m(n,l,{get:o[l],enumerable:!0})},D=(n,o,l,u)=>{if(o&&typeof o=="object"||typeof o=="function")for(let i of y(o))!B.call(n,i)&&i!==l&&m(n,i,{get:()=>o[i],enumerable:!(u=A(o,i))||u.enumerable});return n};var b=n=>D(m({},"__esModule",{value:!0}),n);var L={};P(L,{default:()=>f});module.exports=b(L);var e=require("@raycast/api"),a=require("child_process"),c=require("react"),r=require("react/jsx-runtime");function f(){let[n,o]=(0,c.useState)([]),[l,u]=(0,c.useState)(void 0),i=()=>{(0,a.exec)("xcrun simctl list --json devices",(t,s)=>{if(t!=null){console.log(t);return}let d=JSON.parse(s),S=Object.keys(d.devices).map(g=>d.devices[g]).flat();o(S)})};(0,c.useEffect)(()=>{i()},[]);let h=t=>t.state!=="Booted"?null:(0,r.jsx)(e.Action,{title:"Open",icon:e.Icon.Window,onAction:()=>{(0,a.exec)("open -g -a Simulator");let s=`
        if running of application "Simulator" then
          tell application "System Events"
            set theWindows to windows of (processes whose name is "Simulator")
            repeat with theWindow in (the first item of theWindows)
              set theWindowName to name of theWindow
              if theWindowName contains "${t.name}" then
                perform action "AXRaise" of theWindow
              end if
            end repeat
          end tell
          tell the application "Simulator"
            activate
          end tell
        end if
        `;(0,a.exec)(`osascript -e '${s}'`)}}),p=t=>t.state==="Booted"?null:(0,r.jsx)(e.Action,{title:"Boot",icon:e.Icon.Power,onAction:()=>{(0,a.exec)(`xcrun simctl boot ${t.udid}`,(s,d)=>{i()})}}),w=t=>t.state!=="Booted"?null:(0,r.jsx)(e.Action,{title:"Shutdown",icon:e.Icon.XMarkCircle,style:e.Action.Style.Destructive,onAction:()=>{(0,a.exec)(`xcrun simctl shutdown ${t.udid}`,(s,d)=>{i()})}});return(0,r.jsx)(e.List,{isLoading:n.length===0,searchBarPlaceholder:"Filter by name...",onSearchTextChange:t=>u(t),children:n.filter(t=>t.isAvailable==!1?!1:l==null?!0:t.name.toLowerCase().includes(l.toLowerCase())).sort((t,s)=>t.state==="Booted"&&s.state!=="Booted"?-1:t.state!=="Booted"&&s.state==="Booted"?1:0).map(t=>(0,r.jsx)(e.List.Item,{id:t.udid,title:t.name,accessories:[{tag:{value:t.state,color:t.state==="Booted"?e.Color.Green:e.Color.SecondaryText}}],actions:(0,r.jsxs)(e.ActionPanel,{children:[h(t),p(t),w(t),(0,r.jsx)(e.Action,{title:"Show Data",icon:e.Icon.Folder,onAction:()=>{(0,a.exec)(`open ${t.dataPath}`)}}),(0,r.jsx)(e.Action,{title:"Show Logs",icon:e.Icon.Folder,onAction:()=>{(0,a.exec)(`open ${t.logPath}`)}})]})},t.udid))})}0&&(module.exports={});
