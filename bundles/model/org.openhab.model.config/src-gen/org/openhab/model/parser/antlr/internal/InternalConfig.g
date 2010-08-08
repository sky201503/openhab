/*
* generated by Xtext
*/
grammar InternalConfig;

options {
	superClass=AbstractInternalAntlrParser;
	
}

@lexer::header {
package org.openhab.model.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.openhab.model.parser.antlr.internal; 

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.xtext.parsetree.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.conversion.ValueConverterException;
import org.openhab.model.services.ConfigGrammarAccess;

}

@parser::members {

 	private ConfigGrammarAccess grammarAccess;
 	
    public InternalConfigParser(TokenStream input, IAstFactory factory, ConfigGrammarAccess grammarAccess) {
        this(input);
        this.factory = factory;
        registerRules(grammarAccess.getGrammar());
        this.grammarAccess = grammarAccess;
    }
    
    @Override
    protected InputStream getTokenFile() {
    	ClassLoader classLoader = getClass().getClassLoader();
    	return classLoader.getResourceAsStream("org/openhab/model/parser/antlr/internal/InternalConfig.tokens");
    }
    
    @Override
    protected String getFirstRuleName() {
    	return "Model";	
   	}
   	
   	@Override
   	protected ConfigGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}
}

@rulecatch { 
    catch (RecognitionException re) { 
        recover(input,re); 
        appendSkippedTokens();
    } 
}




// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getModelRule(), currentNode); }
	 iv_ruleModel=ruleModel 
	 { $current=$iv_ruleModel.current; } 
	 EOF 
;

// Rule Model
ruleModel returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getModelAccess().getItemsItemParserRuleCall_0(), currentNode); 
	    }
		lv_items_0_0=ruleItem		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getModelRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"items",
	        		lv_items_0_0, 
	        		"Item", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)*
;





// Entry rule entryRuleItem
entryRuleItem returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getItemRule(), currentNode); }
	 iv_ruleItem=ruleItem 
	 { $current=$iv_ruleItem.current; } 
	 EOF 
;

// Rule Item
ruleItem returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(
    { 
        currentNode=createCompositeNode(grammarAccess.getItemAccess().getNormalItemParserRuleCall_0(), currentNode); 
    }
    this_NormalItem_0=ruleNormalItem
    { 
        $current = $this_NormalItem_0.current; 
        currentNode = currentNode.getParent();
    }

    |
    { 
        currentNode=createCompositeNode(grammarAccess.getItemAccess().getGroupItemParserRuleCall_1(), currentNode); 
    }
    this_GroupItem_1=ruleGroupItem
    { 
        $current = $this_GroupItem_1.current; 
        currentNode = currentNode.getParent();
    }
)
;





// Entry rule entryRuleGroupItem
entryRuleGroupItem returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getGroupItemRule(), currentNode); }
	 iv_ruleGroupItem=ruleGroupItem 
	 { $current=$iv_ruleGroupItem.current; } 
	 EOF 
;

// Rule GroupItem
ruleGroupItem returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
(	'Group' 
    {
        createLeafNode(grammarAccess.getGroupItemAccess().getGroupKeyword_0(), null); 
    }
(
(
		lv_name_1_0=RULE_ID
		{
			createLeafNode(grammarAccess.getGroupItemAccess().getNameIDTerminalRuleCall_1_0(), "name"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getGroupItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"name",
	        		lv_name_1_0, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)(
(
		lv_label_2_0=RULE_STRING
		{
			createLeafNode(grammarAccess.getGroupItemAccess().getLabelSTRINGTerminalRuleCall_2_0(), "label"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getGroupItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"label",
	        		lv_label_2_0, 
	        		"STRING", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)?(	'<' 
    {
        createLeafNode(grammarAccess.getGroupItemAccess().getLessThanSignKeyword_3_0(), null); 
    }
(
(
(
		lv_icon_4_1=RULE_ID
		{
			createLeafNode(grammarAccess.getGroupItemAccess().getIconIDTerminalRuleCall_3_1_0_0(), "icon"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getGroupItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"icon",
	        		lv_icon_4_1, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_icon_4_2=RULE_STRING
		{
			createLeafNode(grammarAccess.getGroupItemAccess().getIconSTRINGTerminalRuleCall_3_1_0_1(), "icon"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getGroupItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"icon",
	        		lv_icon_4_2, 
	        		"STRING", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)

)
)	'>' 
    {
        createLeafNode(grammarAccess.getGroupItemAccess().getGreaterThanSignKeyword_3_2(), null); 
    }
)?(	'(' 
    {
        createLeafNode(grammarAccess.getGroupItemAccess().getLeftParenthesisKeyword_4_0(), null); 
    }
(
(
		{
			if ($current==null) {
	            $current = factory.create(grammarAccess.getGroupItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
        }
	RULE_ID
	{
		createLeafNode(grammarAccess.getGroupItemAccess().getGroupsGroupItemCrossReference_4_1_0(), "groups"); 
	}

)
)(	',' 
    {
        createLeafNode(grammarAccess.getGroupItemAccess().getCommaKeyword_4_2_0(), null); 
    }
(
(
		{
			if ($current==null) {
	            $current = factory.create(grammarAccess.getGroupItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
        }
	RULE_ID
	{
		createLeafNode(grammarAccess.getGroupItemAccess().getGroupsGroupItemCrossReference_4_2_1_0(), "groups"); 
	}

)
))*	')' 
    {
        createLeafNode(grammarAccess.getGroupItemAccess().getRightParenthesisKeyword_4_3(), null); 
    }
)?)
;





// Entry rule entryRuleNormalItem
entryRuleNormalItem returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getNormalItemRule(), currentNode); }
	 iv_ruleNormalItem=ruleNormalItem 
	 { $current=$iv_ruleNormalItem.current; } 
	 EOF 
;

// Rule NormalItem
ruleNormalItem returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
((
(
(
		lv_type_0_1=	'Switch' 
    {
        createLeafNode(grammarAccess.getNormalItemAccess().getTypeSwitchKeyword_0_0_0(), "type"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getNormalItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		set($current, "type", lv_type_0_1, null, lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_type_0_2=	'Rollerblind' 
    {
        createLeafNode(grammarAccess.getNormalItemAccess().getTypeRollerblindKeyword_0_0_1(), "type"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getNormalItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		set($current, "type", lv_type_0_2, null, lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_type_0_3=	'Measurement' 
    {
        createLeafNode(grammarAccess.getNormalItemAccess().getTypeMeasurementKeyword_0_0_2(), "type"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getNormalItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		set($current, "type", lv_type_0_3, null, lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_type_0_4=	'String' 
    {
        createLeafNode(grammarAccess.getNormalItemAccess().getTypeStringKeyword_0_0_3(), "type"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getNormalItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		set($current, "type", lv_type_0_4, null, lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_type_0_5=	'Dimmer' 
    {
        createLeafNode(grammarAccess.getNormalItemAccess().getTypeDimmerKeyword_0_0_4(), "type"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getNormalItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		set($current, "type", lv_type_0_5, null, lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_type_0_6=	'Contact' 
    {
        createLeafNode(grammarAccess.getNormalItemAccess().getTypeContactKeyword_0_0_5(), "type"); 
    }
 
	    {
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getNormalItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        
	        try {
	       		set($current, "type", lv_type_0_6, null, lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_type_0_7=RULE_ID
		{
			createLeafNode(grammarAccess.getNormalItemAccess().getTypeIDTerminalRuleCall_0_0_6(), "type"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getNormalItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"type",
	        		lv_type_0_7, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)

)
)(
(
		lv_name_1_0=RULE_ID
		{
			createLeafNode(grammarAccess.getNormalItemAccess().getNameIDTerminalRuleCall_1_0(), "name"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getNormalItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"name",
	        		lv_name_1_0, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)(
(
		lv_label_2_0=RULE_STRING
		{
			createLeafNode(grammarAccess.getNormalItemAccess().getLabelSTRINGTerminalRuleCall_2_0(), "label"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getNormalItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"label",
	        		lv_label_2_0, 
	        		"STRING", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)?(	'<' 
    {
        createLeafNode(grammarAccess.getNormalItemAccess().getLessThanSignKeyword_3_0(), null); 
    }
(
(
(
		lv_icon_4_1=RULE_ID
		{
			createLeafNode(grammarAccess.getNormalItemAccess().getIconIDTerminalRuleCall_3_1_0_0(), "icon"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getNormalItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"icon",
	        		lv_icon_4_1, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

    |		lv_icon_4_2=RULE_STRING
		{
			createLeafNode(grammarAccess.getNormalItemAccess().getIconSTRINGTerminalRuleCall_3_1_0_1(), "icon"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getNormalItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"icon",
	        		lv_icon_4_2, 
	        		"STRING", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)

)
)	'>' 
    {
        createLeafNode(grammarAccess.getNormalItemAccess().getGreaterThanSignKeyword_3_2(), null); 
    }
)?(	'(' 
    {
        createLeafNode(grammarAccess.getNormalItemAccess().getLeftParenthesisKeyword_4_0(), null); 
    }
(
(
		{
			if ($current==null) {
	            $current = factory.create(grammarAccess.getNormalItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
        }
	RULE_ID
	{
		createLeafNode(grammarAccess.getNormalItemAccess().getGroupsGroupItemCrossReference_4_1_0(), "groups"); 
	}

)
)(	',' 
    {
        createLeafNode(grammarAccess.getNormalItemAccess().getCommaKeyword_4_2_0(), null); 
    }
(
(
		{
			if ($current==null) {
	            $current = factory.create(grammarAccess.getNormalItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
        }
	RULE_ID
	{
		createLeafNode(grammarAccess.getNormalItemAccess().getGroupsGroupItemCrossReference_4_2_1_0(), "groups"); 
	}

)
))*	')' 
    {
        createLeafNode(grammarAccess.getNormalItemAccess().getRightParenthesisKeyword_4_3(), null); 
    }
)?(	'{' 
    {
        createLeafNode(grammarAccess.getNormalItemAccess().getLeftCurlyBracketKeyword_5_0(), null); 
    }
(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getNormalItemAccess().getBindingsBindingParserRuleCall_5_1_0(), currentNode); 
	    }
		lv_bindings_12_0=ruleBinding		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getNormalItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"bindings",
	        		lv_bindings_12_0, 
	        		"Binding", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
)(	',' 
    {
        createLeafNode(grammarAccess.getNormalItemAccess().getCommaKeyword_5_2_0(), null); 
    }
(
(
		{ 
	        currentNode=createCompositeNode(grammarAccess.getNormalItemAccess().getBindingsBindingParserRuleCall_5_2_1_0(), currentNode); 
	    }
		lv_bindings_14_0=ruleBinding		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getNormalItemRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode.getParent(), $current);
	        }
	        try {
	       		add(
	       			$current, 
	       			"bindings",
	        		lv_bindings_14_0, 
	        		"Binding", 
	        		currentNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	        currentNode = currentNode.getParent();
	    }

)
))*	'}' 
    {
        createLeafNode(grammarAccess.getNormalItemAccess().getRightCurlyBracketKeyword_5_3(), null); 
    }
)*)
;





// Entry rule entryRuleBinding
entryRuleBinding returns [EObject current=null] 
	:
	{ currentNode = createCompositeNode(grammarAccess.getBindingRule(), currentNode); }
	 iv_ruleBinding=ruleBinding 
	 { $current=$iv_ruleBinding.current; } 
	 EOF 
;

// Rule Binding
ruleBinding returns [EObject current=null] 
    @init { EObject temp=null; setCurrentLookahead(); resetLookahead(); 
    }
    @after { resetLookahead(); 
    	lastConsumedNode = currentNode;
    }:
((
(
		lv_type_0_0=RULE_ID
		{
			createLeafNode(grammarAccess.getBindingAccess().getTypeIDTerminalRuleCall_0_0(), "type"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getBindingRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"type",
	        		lv_type_0_0, 
	        		"ID", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
)	'=' 
    {
        createLeafNode(grammarAccess.getBindingAccess().getEqualsSignKeyword_1(), null); 
    }
(
(
		lv_configuration_2_0=RULE_STRING
		{
			createLeafNode(grammarAccess.getBindingAccess().getConfigurationSTRINGTerminalRuleCall_2_0(), "configuration"); 
		}
		{
	        if ($current==null) {
	            $current = factory.create(grammarAccess.getBindingRule().getType().getClassifier());
	            associateNodeWithAstElement(currentNode, $current);
	        }
	        try {
	       		set(
	       			$current, 
	       			"configuration",
	        		lv_configuration_2_0, 
	        		"STRING", 
	        		lastConsumedNode);
	        } catch (ValueConverterException vce) {
				handleValueConverterException(vce);
	        }
	    }

)
))
;





RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'"')))* '"'|'\'' ('\\' ('b'|'t'|'n'|'f'|'r'|'"'|'\''|'\\')|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;


