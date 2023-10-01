---
tags: 
date: <% tp.date.now("YYYY-MM-DD") %>
completed: false
---
<%*
	let num = tp.user.get_next_number(tp);
	let name = num + " " + tp.file.title;

	await tp.file.rename(name);
%>