rs.initiate()
//sleep(13000)

// {% if groups['mongo'] is defined %}
// {% for host in groups['mongo'] %}
// rs.add("{{ hostvars[host].private_ip}}")
// sleep(8000)
// {% endfor %}
// {% endif %}
printjson(rs.status())