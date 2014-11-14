LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := main

SDL_PATH := ../SDL
CRAWL_PATH := ../../..

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include \
                    $(LOCAL_PATH)/../sqlite \
                    $(LOCAL_PATH)/../lua/src \
                    $(LOCAL_PATH)/../freetype/include \
                    $(LOCAL_PATH)/$(CRAWL_PATH) \
                    $(LOCAL_PATH)/$(CRAWL_PATH)/rltiles

LOCAL_CFLAGS := `echo $(LOCAL_PATH)/$(CRAWL_PATH)/.android-cflags`
LOCAL_CXXFLAGS := `echo $(LOCAL_PATH)/$(CRAWL_PATH)/.android-cxxflags`

LOCAL_SRC_FILES := $(SDL_PATH)/src/main/android/SDL_android_main.c \
    $(CRAWL_PATH)/ability.cc \
    $(CRAWL_PATH)/abyss.cc \
    $(CRAWL_PATH)/acquire.cc \
    $(CRAWL_PATH)/act-iter.cc \
    $(CRAWL_PATH)/actor-los.cc \
    $(CRAWL_PATH)/actor.cc \
    $(CRAWL_PATH)/areas.cc \
    $(CRAWL_PATH)/arena.cc \
    $(CRAWL_PATH)/artefact.cc \
    $(CRAWL_PATH)/asg.cc \
    $(CRAWL_PATH)/attack.cc \
    $(CRAWL_PATH)/attitude-change.cc \
    $(CRAWL_PATH)/beam.cc \
    $(CRAWL_PATH)/behold.cc \
    $(CRAWL_PATH)/bitary.cc \
    $(CRAWL_PATH)/branch.cc \
    $(CRAWL_PATH)/butcher.cc \
    $(CRAWL_PATH)/bloodspatter.cc \
    $(CRAWL_PATH)/chardump.cc \
    $(CRAWL_PATH)/cio.cc \
    $(CRAWL_PATH)/cloud.cc \
    $(CRAWL_PATH)/clua.cc \
    $(CRAWL_PATH)/cluautil.cc \
    $(CRAWL_PATH)/colour.cc \
    $(CRAWL_PATH)/command.cc \
    $(CRAWL_PATH)/coord.cc \
    $(CRAWL_PATH)/coord-circle.cc \
    $(CRAWL_PATH)/coordit.cc \
    $(CRAWL_PATH)/crash.cc \
    $(CRAWL_PATH)/ctest.cc \
    $(CRAWL_PATH)/dactions.cc \
    $(CRAWL_PATH)/database.cc \
    $(CRAWL_PATH)/dbg-asrt.cc \
    $(CRAWL_PATH)/dbg-maps.cc \
    $(CRAWL_PATH)/dbg-scan.cc \
    $(CRAWL_PATH)/dbg-util.cc \
    $(CRAWL_PATH)/decks.cc \
    $(CRAWL_PATH)/delay.cc \
    $(CRAWL_PATH)/describe.cc \
    $(CRAWL_PATH)/describe-god.cc \
    $(CRAWL_PATH)/dgl-message.cc \
    $(CRAWL_PATH)/dgn-delve.cc \
    $(CRAWL_PATH)/dgn-height.cc \
    $(CRAWL_PATH)/dgn-irregular-box.cc \
    $(CRAWL_PATH)/dgn-labyrinth.cc \
    $(CRAWL_PATH)/dgn-layouts.cc \
    $(CRAWL_PATH)/dgn-overview.cc \
    $(CRAWL_PATH)/dgn-proclayouts.cc \
    $(CRAWL_PATH)/dgn-shoals.cc \
    $(CRAWL_PATH)/dgn-swamp.cc \
    $(CRAWL_PATH)/dgnevent.cc \
    $(CRAWL_PATH)/directn.cc \
    $(CRAWL_PATH)/dlua.cc \
    $(CRAWL_PATH)/dungeon.cc \
    $(CRAWL_PATH)/effects.cc \
    $(CRAWL_PATH)/end.cc \
    $(CRAWL_PATH)/english.cc \
    $(CRAWL_PATH)/errors.cc \
    $(CRAWL_PATH)/evoke.cc \
    $(CRAWL_PATH)/exclude.cc \
    $(CRAWL_PATH)/exercise.cc \
    $(CRAWL_PATH)/fearmonger.cc \
    $(CRAWL_PATH)/feature.cc \
    $(CRAWL_PATH)/fight.cc \
    $(CRAWL_PATH)/files.cc \
    $(CRAWL_PATH)/fineff.cc \
    $(CRAWL_PATH)/food.cc \
    $(CRAWL_PATH)/format.cc \
    $(CRAWL_PATH)/fprop.cc \
    $(CRAWL_PATH)/geom2d.cc \
    $(CRAWL_PATH)/ghost.cc \
    $(CRAWL_PATH)/godabil.cc \
    $(CRAWL_PATH)/godblessing.cc \
    $(CRAWL_PATH)/godcompanions.cc \
    $(CRAWL_PATH)/godconduct.cc \
    $(CRAWL_PATH)/goditem.cc \
    $(CRAWL_PATH)/godmenu.cc \
    $(CRAWL_PATH)/godpassive.cc \
    $(CRAWL_PATH)/godprayer.cc \
    $(CRAWL_PATH)/godwrath.cc \
    $(CRAWL_PATH)/hash.cc \
    $(CRAWL_PATH)/hints.cc \
    $(CRAWL_PATH)/hiscores.cc \
    $(CRAWL_PATH)/initfile.cc \
    $(CRAWL_PATH)/invent.cc \
    $(CRAWL_PATH)/item_use.cc \
    $(CRAWL_PATH)/itemname.cc \
    $(CRAWL_PATH)/itemprop.cc \
    $(CRAWL_PATH)/items.cc \
    $(CRAWL_PATH)/jobs.cc \
    $(CRAWL_PATH)/kills.cc \
    $(CRAWL_PATH)/l_colour.cc \
    $(CRAWL_PATH)/l_crawl.cc \
    $(CRAWL_PATH)/l_debug.cc \
    $(CRAWL_PATH)/l_dgn.cc \
    $(CRAWL_PATH)/l_dgnbld.cc \
    $(CRAWL_PATH)/l_dgnevt.cc \
    $(CRAWL_PATH)/l_dgngrd.cc \
    $(CRAWL_PATH)/l_dgnit.cc \
    $(CRAWL_PATH)/l_dgnlvl.cc \
    $(CRAWL_PATH)/l_dgnmon.cc \
    $(CRAWL_PATH)/l_dgntil.cc \
    $(CRAWL_PATH)/l_feat.cc \
    $(CRAWL_PATH)/l_file.cc \
    $(CRAWL_PATH)/l_food.cc \
    $(CRAWL_PATH)/l_global.cc \
    $(CRAWL_PATH)/l_item.cc \
    $(CRAWL_PATH)/l_los.cc \
    $(CRAWL_PATH)/l_mapgrd.cc \
    $(CRAWL_PATH)/l_mapmrk.cc \
    $(CRAWL_PATH)/l_moninf.cc \
    $(CRAWL_PATH)/l_mons.cc \
    $(CRAWL_PATH)/l_option.cc \
    $(CRAWL_PATH)/l_spells.cc \
    $(CRAWL_PATH)/l_subvault.cc \
    $(CRAWL_PATH)/l_travel.cc \
    $(CRAWL_PATH)/l_view.cc \
    $(CRAWL_PATH)/l_you.cc \
    $(CRAWL_PATH)/lang-fake.cc \
    $(CRAWL_PATH)/lev-pand.cc \
    $(CRAWL_PATH)/libutil.cc \
    $(CRAWL_PATH)/los.cc \
    $(CRAWL_PATH)/los_def.cc \
    $(CRAWL_PATH)/losglobal.cc \
    $(CRAWL_PATH)/losparam.cc \
    $(CRAWL_PATH)/luaterp.cc \
    $(CRAWL_PATH)/macro.cc \
    $(CRAWL_PATH)/main.cc \
    $(CRAWL_PATH)/makeitem.cc \
    $(CRAWL_PATH)/map_knowledge.cc \
    $(CRAWL_PATH)/mapdef.cc \
    $(CRAWL_PATH)/mapmark.cc \
    $(CRAWL_PATH)/maps.cc \
    $(CRAWL_PATH)/melee_attack.cc \
    $(CRAWL_PATH)/menu.cc \
    $(CRAWL_PATH)/message-stream.cc \
    $(CRAWL_PATH)/message.cc \
    $(CRAWL_PATH)/misc.cc \
    $(CRAWL_PATH)/mon-abil.cc \
    $(CRAWL_PATH)/mon-act.cc \
    $(CRAWL_PATH)/mon-behv.cc \
    $(CRAWL_PATH)/mon-cast.cc \
    $(CRAWL_PATH)/mon-chimera.cc \
    $(CRAWL_PATH)/mon-clone.cc \
    $(CRAWL_PATH)/mon-death.cc \
    $(CRAWL_PATH)/mon-ench.cc \
    $(CRAWL_PATH)/mon-gear.cc \
    $(CRAWL_PATH)/mon-grow.cc \
    $(CRAWL_PATH)/mon-info.cc \
    $(CRAWL_PATH)/mon-movetarget.cc \
    $(CRAWL_PATH)/mon-pathfind.cc \
    $(CRAWL_PATH)/mon-pick.cc \
    $(CRAWL_PATH)/mon-place.cc \
    $(CRAWL_PATH)/mon-poly.cc \
    $(CRAWL_PATH)/mon-project.cc \
    $(CRAWL_PATH)/mon-speak.cc \
    $(CRAWL_PATH)/mon-stealth.cc \
    $(CRAWL_PATH)/mon-tentacle.cc \
    $(CRAWL_PATH)/mon-transit.cc \
    $(CRAWL_PATH)/mon-util.cc \
    $(CRAWL_PATH)/monster.cc \
    $(CRAWL_PATH)/mutation.cc \
    $(CRAWL_PATH)/newgame.cc \
    $(CRAWL_PATH)/ng-init.cc \
    $(CRAWL_PATH)/ng-input.cc \
    $(CRAWL_PATH)/ng-restr.cc \
    $(CRAWL_PATH)/ng-setup.cc \
    $(CRAWL_PATH)/ng-wanderer.cc \
    $(CRAWL_PATH)/notes.cc \
    $(CRAWL_PATH)/orb.cc \
    $(CRAWL_PATH)/ouch.cc \
    $(CRAWL_PATH)/output.cc \
    $(CRAWL_PATH)/package.cc \
    $(CRAWL_PATH)/pattern.cc \
    $(CRAWL_PATH)/perlin.cc \
    $(CRAWL_PATH)/place-info.cc \
    $(CRAWL_PATH)/place.cc \
    $(CRAWL_PATH)/player-act.cc \
    $(CRAWL_PATH)/player-equip.cc \
    $(CRAWL_PATH)/player-reacts.cc \
    $(CRAWL_PATH)/player-stats.cc \
    $(CRAWL_PATH)/player.cc \
    $(CRAWL_PATH)/potion.cc \
    $(CRAWL_PATH)/prompt.cc \
    $(CRAWL_PATH)/quiver.cc \
    $(CRAWL_PATH)/random.cc \
    $(CRAWL_PATH)/random-var.cc \
    $(CRAWL_PATH)/ranged_attack.cc \
    $(CRAWL_PATH)/ray.cc \
    $(CRAWL_PATH)/rot.cc \
    $(CRAWL_PATH)/religion.cc \
    $(CRAWL_PATH)/shopping.cc \
    $(CRAWL_PATH)/shout.cc \
    $(CRAWL_PATH)/show.cc \
    $(CRAWL_PATH)/showsymb.cc \
    $(CRAWL_PATH)/skill_menu.cc \
    $(CRAWL_PATH)/skills.cc \
    $(CRAWL_PATH)/species.cc \
    $(CRAWL_PATH)/spl-book.cc \
    $(CRAWL_PATH)/spl-cast.cc \
    $(CRAWL_PATH)/spl-clouds.cc \
    $(CRAWL_PATH)/spl-damage.cc \
    $(CRAWL_PATH)/spl-goditem.cc \
    $(CRAWL_PATH)/spl-miscast.cc \
    $(CRAWL_PATH)/spl-monench.cc \
    $(CRAWL_PATH)/spl-other.cc \
    $(CRAWL_PATH)/spl-pick.cc \
    $(CRAWL_PATH)/spl-selfench.cc \
    $(CRAWL_PATH)/spl-summoning.cc \
    $(CRAWL_PATH)/spl-tornado.cc \
    $(CRAWL_PATH)/spl-transloc.cc \
    $(CRAWL_PATH)/spl-util.cc \
    $(CRAWL_PATH)/spl-wpnench.cc \
    $(CRAWL_PATH)/spl-zap.cc \
    $(CRAWL_PATH)/sprint.cc \
    $(CRAWL_PATH)/sqldbm.cc \
    $(CRAWL_PATH)/stairs.cc \
    $(CRAWL_PATH)/startup.cc \
    $(CRAWL_PATH)/stash.cc \
    $(CRAWL_PATH)/state.cc \
    $(CRAWL_PATH)/status.cc \
    $(CRAWL_PATH)/stepdown.cc \
    $(CRAWL_PATH)/store.cc \
    $(CRAWL_PATH)/stringutil.cc \
    $(CRAWL_PATH)/syscalls.cc \
    $(CRAWL_PATH)/tags.cc \
    $(CRAWL_PATH)/target.cc \
    $(CRAWL_PATH)/teleport.cc \
    $(CRAWL_PATH)/terrain.cc \
    $(CRAWL_PATH)/throw.cc \
    $(CRAWL_PATH)/transform.cc \
    $(CRAWL_PATH)/traps.cc \
    $(CRAWL_PATH)/travel.cc \
    $(CRAWL_PATH)/tutorial.cc \
    $(CRAWL_PATH)/uncancel.cc \
    $(CRAWL_PATH)/unicode.cc \
    $(CRAWL_PATH)/view.cc \
    $(CRAWL_PATH)/viewchar.cc \
    $(CRAWL_PATH)/viewgeom.cc \
    $(CRAWL_PATH)/viewmap.cc \
    $(CRAWL_PATH)/wcwidth.cc \
    $(CRAWL_PATH)/wiz-dgn.cc \
    $(CRAWL_PATH)/wiz-dump.cc \
    $(CRAWL_PATH)/wiz-fsim.cc \
    $(CRAWL_PATH)/wiz-item.cc \
    $(CRAWL_PATH)/wiz-mon.cc \
    $(CRAWL_PATH)/wiz-you.cc \
    $(CRAWL_PATH)/worley.cc \
    $(CRAWL_PATH)/xom.cc \
    $(CRAWL_PATH)/zotdef.cc \
    $(CRAWL_PATH)/tilepick.cc \
    $(CRAWL_PATH)/tileview.cc \
    $(CRAWL_PATH)/tiledoll.cc \
    $(CRAWL_PATH)/tilemcache.cc \
    $(CRAWL_PATH)/tilepick-p.cc \
    $(CRAWL_PATH)/tilecell.cc \
    $(CRAWL_PATH)/glwrapper.cc \
    $(CRAWL_PATH)/libgui.cc \
    $(CRAWL_PATH)/tilebuf.cc \
    $(CRAWL_PATH)/tiledgnbuf.cc \
    $(CRAWL_PATH)/tilefont.cc \
    $(CRAWL_PATH)/tilereg.cc \
    $(CRAWL_PATH)/tilereg-abl.cc \
    $(CRAWL_PATH)/tilereg-cmd.cc \
    $(CRAWL_PATH)/tilereg-crt.cc \
    $(CRAWL_PATH)/tilereg-dgn.cc \
    $(CRAWL_PATH)/tilereg-doll.cc \
    $(CRAWL_PATH)/tilereg-grid.cc \
    $(CRAWL_PATH)/tilereg-inv.cc \
    $(CRAWL_PATH)/tilereg-map.cc \
    $(CRAWL_PATH)/tilereg-mem.cc \
    $(CRAWL_PATH)/tilereg-menu.cc \
    $(CRAWL_PATH)/tilereg-mon.cc \
    $(CRAWL_PATH)/tilereg-msg.cc \
    $(CRAWL_PATH)/tilereg-popup.cc \
    $(CRAWL_PATH)/tilereg-skl.cc \
    $(CRAWL_PATH)/tilereg-spl.cc \
    $(CRAWL_PATH)/tilereg-stat.cc \
    $(CRAWL_PATH)/tilereg-tab.cc \
    $(CRAWL_PATH)/tilereg-text.cc \
    $(CRAWL_PATH)/tilereg-title.cc \
    $(CRAWL_PATH)/tilesdl.cc \
    $(CRAWL_PATH)/tiletex.cc \
    $(CRAWL_PATH)/windowmanager-sdl.cc \
    $(CRAWL_PATH)/glwrapper-ogl.cc \
    $(CRAWL_PATH)/fontwrapper-ft.cc \
    $(CRAWL_PATH)/prebuilt/levcomp.tab.cc \
    $(CRAWL_PATH)/prebuilt/levcomp.lex.cc \
    $(CRAWL_PATH)/rltiles/tiledef-main.cc \
    $(CRAWL_PATH)/rltiles/tiledef-dngn.cc \
    $(CRAWL_PATH)/rltiles/tiledef-floor.cc \
    $(CRAWL_PATH)/rltiles/tiledef-wall.cc \
    $(CRAWL_PATH)/rltiles/tiledef-feat.cc \
    $(CRAWL_PATH)/rltiles/tiledef-player.cc \
    $(CRAWL_PATH)/rltiles/tiledef-gui.cc \
    $(CRAWL_PATH)/rltiles/tiledef-icons.cc \
    $(CRAWL_PATH)/rltiles/tiledef-unrand.cc \
    $(CRAWL_PATH)/version.cc

LOCAL_SHARED_LIBRARIES := SDL2 SDL2_image freetype sqlite lua zlib

LOCAL_LDLIBS := -ldl -lGLESv1_CM -lGLESv2 -llog -landroid

include $(BUILD_SHARED_LIBRARY)
