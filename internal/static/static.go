package static

import "embed"

//go:generate npm run build

//go:embed *
var FS embed.FS
