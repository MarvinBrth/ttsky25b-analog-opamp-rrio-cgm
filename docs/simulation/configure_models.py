from pathlib import Path
import sys,json,os,ctypes
root=Path(__file__).resolve().parent
pdk=Path(sys.argv[1]).resolve()
assert (pdk/'libs.ref/sky130_fd_pr').is_dir(),pdk
support=root/'models';support.mkdir(exist_ok=True)
for name in ('common.spice','selected.lib.spice','local_mismatch.lib.spice'):(support/name).touch(exist_ok=True)
def path(p):
    if os.name!='nt':return p.as_posix()
    buf=ctypes.create_unicode_buffer(32768)
    n=ctypes.windll.kernel32.GetShortPathNameW(str(p),buf,len(buf))
    if not n:raise OSError(str(p))
    return buf.value.replace(chr(92),'/')
templates=json.loads((root/'model-templates.json').read_text())
for name,text in templates.items():
    text=text.replace('@PDK@',path(pdk)).replace('@SUPPORT@',path(support))
    (support/name).write_text(text,newline='\n')
text=(support/'selected.lib.spice').read_text().replace('mc_mm_switch=0 mc_pr_switch=0','mc_mm_switch=1 mc_pr_switch=0')
(support/'local_mismatch.lib.spice').write_text(text,newline='\n')
print('Configured models in',support)
