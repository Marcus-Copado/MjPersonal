<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Check_promote_and_deploy</fullName>
        <field>copado__Promote_and_Deploy__c</field>
        <literalValue>1</literalValue>
        <name>Check promote and deploy</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Status_update</fullName>
        <field>copado__Status__c</field>
        <literalValue>Rejected</literalValue>
        <name>Status update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Uncheck_ready_to_promote</fullName>
        <field>copado__Promote_Change__c</field>
        <literalValue>0</literalValue>
        <name>Uncheck ready to promote</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Datetime_Completed_Field_with_NOW</fullName>
        <description>This updates the field &quot;Datetime Completed&quot; with the current datetime, or NOW.</description>
        <field>Datetime_Completed__c</field>
        <formula>NOW ()</formula>
        <name>Update Datetime Completed Field with NOW</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_status_field</fullName>
        <field>copado__Status__c</field>
        <literalValue>Approved</literalValue>
        <name>Update status field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Fill In Datetime Completed Field</fullName>
        <actions>
            <name>Update_Datetime_Completed_Field_with_NOW</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND (2 OR 3)</booleanFilter>
        <criteriaItems>
            <field>copado__User_Story__c.Datetime_Completed__c</field>
            <operation>equals</operation>
        </criteriaItems>
        <criteriaItems>
            <field>copado__User_Story__c.copado__Promote_and_Deploy__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>copado__User_Story__c.copado__Promote_Change__c</field>
            <operation>equals</operation>
            <value>True</value>
        </criteriaItems>
        <description>Fills in the &quot;Datetime Completed&quot; field with NOW, when either the &quot;Promote And Deploy&quot; or &quot;Ready To Promote&quot; checkboxes are marked true.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
