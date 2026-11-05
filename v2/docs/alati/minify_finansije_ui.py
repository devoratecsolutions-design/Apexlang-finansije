import re, sys, hashlib, subprocess
base = '/home/claude/apexlang-finansije/v2/izvor/shared-components/static-files/'
js = open(base + 'js/finansije-ui.js', encoding='utf-8').read()
m = re.sub(r'/\*.*?\*/', '', js, flags=re.S)
lines = [l.strip() for l in m.split('\n')]
lines = [l for l in lines if l and not l.startswith('//')]
open(base + 'js/finansije-ui.min.js', 'w', encoding='utf-8').write(' '.join(lines) + '\n')
css = open(base + 'css/finansije-ui.css', encoding='utf-8').read()
c = re.sub(r'/\*.*?\*/', '', css, flags=re.S)
c = re.sub(r'\s+', ' ', c)
c = re.sub(r'\s*([{};,>])\s*', r'\1', c)
c = c.replace(';}', '}')
open(base + 'css/finansije-ui.min.css', 'w', encoding='utf-8').write(c.strip() + '\n')
hj = hashlib.md5(js.encode('utf-8')).hexdigest()[:8]
hc = hashlib.md5(css.encode('utf-8')).hexdigest()[:8]
app = '/home/claude/apexlang-finansije/v2/izvor/application.apx'
a = open(app, encoding='utf-8').read()
a = re.sub(r'(finansije-ui#MIN#\.js\?v=)[0-9a-f]{8}', r'\g<1>' + hj, a)
a = re.sub(r'(finansije-ui#MIN#\.css\?v=)[0-9a-f]{8}', r'\g<1>' + hc, a)
open(app, 'w', encoding='utf-8').write(a)
print(hj, hc)
