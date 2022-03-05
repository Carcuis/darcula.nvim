lua << EOF
package.loaded['darcula'] = nil
package.loaded['darcula.util'] = nil
package.loaded['darcula.colors'] = nil
package.loaded['darcula.theme'] = nil
package.loaded['darcula.functions'] = nil

require('darcula').set()
EOF
