#!/bin/bash
# Handle rollback
echo "Rolling back to the previous version..."
# Example: Restore the previous version files or configuration
if [ -d "/usr/local/myapp/previous" ]; then
    mv /usr/local/myapp/previous/* /usr/local/myapp/
    echo "Rollback completed."
else
    echo "No previous version found to rollback."
fi
