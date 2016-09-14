[% BLOCK tabrow %]
   <tr><td>[% name %]</td><td>[% email %]</td></tr>
[% END %]

<table>
[% PROCESS tabrow name="tom"   email="tom@here.org"    %]
[% PROCESS tabrow name="dick"  email="disk@there.org"  %]
[% PROCESS tabrow name="larry" email="larry@where.org" %]
</table>
