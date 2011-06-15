/**
 * openHAB, the open Home Automation Bus.
 * Copyright (C) 2011, openHAB.org <admin@openhab.org>
 *
 * See the contributors.txt file in the distribution for a
 * full listing of individual contributors.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as
 * published by the Free Software Foundation; either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, see <http://www.gnu.org/licenses>.
 *
 * Additional permission under GNU GPL version 3 section 7
 *
 * If you modify this Program, or any covered work, by linking or
 * combining it with Eclipse (or a modified version of that library),
 * containing parts covered by the terms of the Eclipse Public License
 * (EPL), the licensors of this Program grant you additional permission
 * to convey the resulting work.
 */

/*
* generated by Xtext
*/
package org.openhab.model.ui.contentassist.antlr;

import java.util.Collection;
import java.util.Map;
import java.util.HashMap;

import org.antlr.runtime.RecognitionException;
import org.eclipse.xtext.AbstractElement;
import org.eclipse.xtext.ui.editor.contentassist.antlr.AbstractContentAssistParser;
import org.eclipse.xtext.ui.editor.contentassist.antlr.FollowElement;
import org.eclipse.xtext.ui.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;

import com.google.inject.Inject;

import org.openhab.model.services.SitemapGrammarAccess;

public class SitemapParser extends AbstractContentAssistParser {
	
	@Inject
	private SitemapGrammarAccess grammarAccess;
	
	private Map<AbstractElement, String> nameMappings;
	
	@Override
	protected org.openhab.model.ui.contentassist.antlr.internal.InternalSitemapParser createParser() {
		org.openhab.model.ui.contentassist.antlr.internal.InternalSitemapParser result = new org.openhab.model.ui.contentassist.antlr.internal.InternalSitemapParser(null);
		result.setGrammarAccess(grammarAccess);
		return result;
	}
	
	@Override
	protected String getRuleName(AbstractElement element) {
		if (nameMappings == null) {
			nameMappings = new HashMap<AbstractElement, String>() {
				private static final long serialVersionUID = 1L;
				{
					put(grammarAccess.getWidgetAccess().getAlternatives(), "rule__Widget__Alternatives");
					put(grammarAccess.getWidgetAccess().getAlternatives_1(), "rule__Widget__Alternatives_1");
					put(grammarAccess.getLinkableWidgetAccess().getAlternatives_0(), "rule__LinkableWidget__Alternatives_0");
					put(grammarAccess.getLinkableWidgetAccess().getLabelAlternatives_1_1_0(), "rule__LinkableWidget__LabelAlternatives_1_1_0");
					put(grammarAccess.getLinkableWidgetAccess().getIconAlternatives_2_1_0(), "rule__LinkableWidget__IconAlternatives_2_1_0");
					put(grammarAccess.getSwitchAccess().getLabelAlternatives_2_1_0(), "rule__Switch__LabelAlternatives_2_1_0");
					put(grammarAccess.getSwitchAccess().getIconAlternatives_3_1_0(), "rule__Switch__IconAlternatives_3_1_0");
					put(grammarAccess.getSliderAccess().getLabelAlternatives_2_1_0(), "rule__Slider__LabelAlternatives_2_1_0");
					put(grammarAccess.getSliderAccess().getIconAlternatives_3_1_0(), "rule__Slider__IconAlternatives_3_1_0");
					put(grammarAccess.getSelectionAccess().getLabelAlternatives_2_1_0(), "rule__Selection__LabelAlternatives_2_1_0");
					put(grammarAccess.getSelectionAccess().getIconAlternatives_3_1_0(), "rule__Selection__IconAlternatives_3_1_0");
					put(grammarAccess.getListAccess().getLabelAlternatives_2_1_0(), "rule__List__LabelAlternatives_2_1_0");
					put(grammarAccess.getListAccess().getIconAlternatives_3_1_0(), "rule__List__IconAlternatives_3_1_0");
					put(grammarAccess.getMappingAccess().getCmdAlternatives_0_0(), "rule__Mapping__CmdAlternatives_0_0");
					put(grammarAccess.getMappingAccess().getLabelAlternatives_2_0(), "rule__Mapping__LabelAlternatives_2_0");
					put(grammarAccess.getSitemapModelAccess().getGroup(), "rule__SitemapModel__Group__0");
					put(grammarAccess.getSitemapAccess().getGroup(), "rule__Sitemap__Group__0");
					put(grammarAccess.getSitemapAccess().getGroup_1(), "rule__Sitemap__Group_1__0");
					put(grammarAccess.getSitemapAccess().getGroup_2(), "rule__Sitemap__Group_2__0");
					put(grammarAccess.getLinkableWidgetAccess().getGroup(), "rule__LinkableWidget__Group__0");
					put(grammarAccess.getLinkableWidgetAccess().getGroup_1(), "rule__LinkableWidget__Group_1__0");
					put(grammarAccess.getLinkableWidgetAccess().getGroup_2(), "rule__LinkableWidget__Group_2__0");
					put(grammarAccess.getLinkableWidgetAccess().getGroup_3(), "rule__LinkableWidget__Group_3__0");
					put(grammarAccess.getFrameAccess().getGroup(), "rule__Frame__Group__0");
					put(grammarAccess.getFrameAccess().getGroup_2(), "rule__Frame__Group_2__0");
					put(grammarAccess.getTextAccess().getGroup(), "rule__Text__Group__0");
					put(grammarAccess.getTextAccess().getGroup_2(), "rule__Text__Group_2__0");
					put(grammarAccess.getGroupAccess().getGroup(), "rule__Group__Group__0");
					put(grammarAccess.getGroupAccess().getGroup_1(), "rule__Group__Group_1__0");
					put(grammarAccess.getImageAccess().getGroup(), "rule__Image__Group__0");
					put(grammarAccess.getImageAccess().getGroup_1(), "rule__Image__Group_1__0");
					put(grammarAccess.getImageAccess().getGroup_2(), "rule__Image__Group_2__0");
					put(grammarAccess.getSwitchAccess().getGroup(), "rule__Switch__Group__0");
					put(grammarAccess.getSwitchAccess().getGroup_1(), "rule__Switch__Group_1__0");
					put(grammarAccess.getSwitchAccess().getGroup_2(), "rule__Switch__Group_2__0");
					put(grammarAccess.getSwitchAccess().getGroup_3(), "rule__Switch__Group_3__0");
					put(grammarAccess.getSwitchAccess().getGroup_4(), "rule__Switch__Group_4__0");
					put(grammarAccess.getSwitchAccess().getGroup_4_2(), "rule__Switch__Group_4_2__0");
					put(grammarAccess.getSliderAccess().getGroup(), "rule__Slider__Group__0");
					put(grammarAccess.getSliderAccess().getGroup_1(), "rule__Slider__Group_1__0");
					put(grammarAccess.getSliderAccess().getGroup_2(), "rule__Slider__Group_2__0");
					put(grammarAccess.getSliderAccess().getGroup_3(), "rule__Slider__Group_3__0");
					put(grammarAccess.getSliderAccess().getGroup_4(), "rule__Slider__Group_4__0");
					put(grammarAccess.getSelectionAccess().getGroup(), "rule__Selection__Group__0");
					put(grammarAccess.getSelectionAccess().getGroup_1(), "rule__Selection__Group_1__0");
					put(grammarAccess.getSelectionAccess().getGroup_2(), "rule__Selection__Group_2__0");
					put(grammarAccess.getSelectionAccess().getGroup_3(), "rule__Selection__Group_3__0");
					put(grammarAccess.getSelectionAccess().getGroup_4(), "rule__Selection__Group_4__0");
					put(grammarAccess.getSelectionAccess().getGroup_4_2(), "rule__Selection__Group_4_2__0");
					put(grammarAccess.getListAccess().getGroup(), "rule__List__Group__0");
					put(grammarAccess.getListAccess().getGroup_1(), "rule__List__Group_1__0");
					put(grammarAccess.getListAccess().getGroup_2(), "rule__List__Group_2__0");
					put(grammarAccess.getListAccess().getGroup_3(), "rule__List__Group_3__0");
					put(grammarAccess.getListAccess().getGroup_4(), "rule__List__Group_4__0");
					put(grammarAccess.getMappingAccess().getGroup(), "rule__Mapping__Group__0");
					put(grammarAccess.getSitemapAccess().getNameAssignment_0(), "rule__Sitemap__NameAssignment_0");
					put(grammarAccess.getSitemapAccess().getLabelAssignment_1_1(), "rule__Sitemap__LabelAssignment_1_1");
					put(grammarAccess.getSitemapAccess().getIconAssignment_2_1(), "rule__Sitemap__IconAssignment_2_1");
					put(grammarAccess.getSitemapAccess().getChildrenAssignment_4(), "rule__Sitemap__ChildrenAssignment_4");
					put(grammarAccess.getLinkableWidgetAccess().getLabelAssignment_1_1(), "rule__LinkableWidget__LabelAssignment_1_1");
					put(grammarAccess.getLinkableWidgetAccess().getIconAssignment_2_1(), "rule__LinkableWidget__IconAssignment_2_1");
					put(grammarAccess.getLinkableWidgetAccess().getChildrenAssignment_3_1(), "rule__LinkableWidget__ChildrenAssignment_3_1");
					put(grammarAccess.getFrameAccess().getItemAssignment_2_1(), "rule__Frame__ItemAssignment_2_1");
					put(grammarAccess.getTextAccess().getItemAssignment_2_1(), "rule__Text__ItemAssignment_2_1");
					put(grammarAccess.getGroupAccess().getItemAssignment_1_1(), "rule__Group__ItemAssignment_1_1");
					put(grammarAccess.getImageAccess().getItemAssignment_1_1(), "rule__Image__ItemAssignment_1_1");
					put(grammarAccess.getImageAccess().getUrlAssignment_2_1(), "rule__Image__UrlAssignment_2_1");
					put(grammarAccess.getSwitchAccess().getItemAssignment_1_1(), "rule__Switch__ItemAssignment_1_1");
					put(grammarAccess.getSwitchAccess().getLabelAssignment_2_1(), "rule__Switch__LabelAssignment_2_1");
					put(grammarAccess.getSwitchAccess().getIconAssignment_3_1(), "rule__Switch__IconAssignment_3_1");
					put(grammarAccess.getSwitchAccess().getMappingsAssignment_4_1(), "rule__Switch__MappingsAssignment_4_1");
					put(grammarAccess.getSwitchAccess().getMappingsAssignment_4_2_1(), "rule__Switch__MappingsAssignment_4_2_1");
					put(grammarAccess.getSliderAccess().getItemAssignment_1_1(), "rule__Slider__ItemAssignment_1_1");
					put(grammarAccess.getSliderAccess().getLabelAssignment_2_1(), "rule__Slider__LabelAssignment_2_1");
					put(grammarAccess.getSliderAccess().getIconAssignment_3_1(), "rule__Slider__IconAssignment_3_1");
					put(grammarAccess.getSliderAccess().getFrequencyAssignment_4_1(), "rule__Slider__FrequencyAssignment_4_1");
					put(grammarAccess.getSliderAccess().getSwitchEnabledAssignment_5(), "rule__Slider__SwitchEnabledAssignment_5");
					put(grammarAccess.getSelectionAccess().getItemAssignment_1_1(), "rule__Selection__ItemAssignment_1_1");
					put(grammarAccess.getSelectionAccess().getLabelAssignment_2_1(), "rule__Selection__LabelAssignment_2_1");
					put(grammarAccess.getSelectionAccess().getIconAssignment_3_1(), "rule__Selection__IconAssignment_3_1");
					put(grammarAccess.getSelectionAccess().getMappingsAssignment_4_1(), "rule__Selection__MappingsAssignment_4_1");
					put(grammarAccess.getSelectionAccess().getMappingsAssignment_4_2_1(), "rule__Selection__MappingsAssignment_4_2_1");
					put(grammarAccess.getListAccess().getItemAssignment_1_1(), "rule__List__ItemAssignment_1_1");
					put(grammarAccess.getListAccess().getLabelAssignment_2_1(), "rule__List__LabelAssignment_2_1");
					put(grammarAccess.getListAccess().getIconAssignment_3_1(), "rule__List__IconAssignment_3_1");
					put(grammarAccess.getListAccess().getSeparatorAssignment_4_1(), "rule__List__SeparatorAssignment_4_1");
					put(grammarAccess.getMappingAccess().getCmdAssignment_0(), "rule__Mapping__CmdAssignment_0");
					put(grammarAccess.getMappingAccess().getLabelAssignment_2(), "rule__Mapping__LabelAssignment_2");
				}
			};
		}
		return nameMappings.get(element);
	}
	
	@Override
	protected Collection<FollowElement> getFollowElements(AbstractInternalContentAssistParser parser) {
		try {
			org.openhab.model.ui.contentassist.antlr.internal.InternalSitemapParser typedParser = (org.openhab.model.ui.contentassist.antlr.internal.InternalSitemapParser) parser;
			typedParser.entryRuleSitemapModel();
			return typedParser.getFollowElements();
		} catch(RecognitionException ex) {
			throw new RuntimeException(ex);
		}		
	}
	
	@Override
	protected String[] getInitialHiddenTokens() {
		return new String[] { "RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT" };
	}
	
	public SitemapGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}
	
	public void setGrammarAccess(SitemapGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
}
