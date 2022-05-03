lua << EOF
package.loaded['gruvy'] = nil
package.loaded['gruvy.util'] = nil
package.loaded['gruvy.colors'] = nil
package.loaded['gruvy.theme'] = nil
package.loaded['gruvy.functions'] = nil

require('gruvy').set()
EOF
