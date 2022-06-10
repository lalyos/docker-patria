#!/bin/bash

cat > /var/www/html/index.html <<EOF
<htlm>
<body bgcolor="$COLOR">
  <h2>$TITLE</h2>
  Hint: please use COLOR and TITLE env vars ...
</body>
</html>
EOF

nginx -g "daemon off;"
