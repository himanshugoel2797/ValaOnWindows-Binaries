/* hildon-fm-2.vapi generated by vapigen, do not modify. */

namespace Hildon {
	[CCode (cheader_filename = "hildon/hildon-file-chooser-dialog.h")]
	public class FileChooserDialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable, Gtk.FileChooser {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public FileChooserDialog (Gtk.Window parent, Gtk.FileChooserAction action);
		public unowned Gtk.Widget add_extensions_combo (out unowned string extensions, out unowned string ext_names);
		public void add_extra (Gtk.Widget widget);
		public void focus_to_input ();
		public unowned string get_extension ();
		public unowned string get_safe_folder ();
		public unowned string get_safe_folder_uri ();
		public bool get_show_upnp ();
		public void set_extension (string extension);
		public void set_safe_folder (string local_path);
		public void set_safe_folder_uri (string uri);
		public void set_show_upnp (bool value);
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public FileChooserDialog.with_properties (Gtk.Window parent, ...);
		[NoAccessorMethod]
		public bool autonaming { get; set; }
		[NoAccessorMethod]
		public string empty_text { owned get; set; }
		[NoAccessorMethod]
		public Hildon.FileSystemModel file_system_model { owned get; construct; }
		[NoAccessorMethod]
		public int max_full_path_length { get; set construct; }
		[NoAccessorMethod]
		public int max_name_length { get; set construct; }
		[NoAccessorMethod]
		public string open_button_text { owned get; set; }
		[NoAccessorMethod]
		public string save_multiple { owned get; set; }
		[NoAccessorMethod]
		public int selection_mode { get; set; }
		[NoAccessorMethod]
		public bool show_folder_button { get; set; }
		[NoAccessorMethod]
		public bool show_location { get; set; }
	}
	[CCode (cheader_filename = "hildon/hildon-file-details-dialog.h")]
	public class FileDetailsDialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public FileDetailsDialog (Gtk.Window parent, string filename);
		public bool get_file_iter (out Gtk.TreeIter iter);
		public void set_file_iter (Gtk.TreeIter iter);
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public FileDetailsDialog.with_model (Gtk.Window parent, Hildon.FileSystemModel model);
		[NoAccessorMethod]
		public Gtk.Widget additional_tab { owned get; set construct; }
		[NoAccessorMethod]
		public string additional_tab_label { owned get; set; }
		[NoAccessorMethod]
		public bool enable_read_only_checkbox { get; set construct; }
		[NoAccessorMethod]
		public Hildon.FileSystemModel model { owned get; set; }
		[NoAccessorMethod]
		public bool show_tabs { get; set construct; }
		[NoAccessorMethod]
		public bool show_type_icon { get; set construct; }
	}
	[CCode (cheader_filename = "hildon/hildon-file-selection.h")]
	public class FileSelection : Gtk.Container, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		protected FileSelection ();
		public void clear_multi_selection ();
		public bool content_iter_is_selected (Gtk.TreeIter iter);
		public void dim_current_selection ();
		public bool get_active_content_iter (Gtk.TreeIter iter);
		public Hildon.FileSelectionPane get_active_pane ();
		public bool get_column_headers_visible ();
		public bool get_current_content_iter (Gtk.TreeIter iter);
		public bool get_current_folder_iter (Gtk.TreeIter iter);
		public unowned string get_current_folder_uri ();
		public unowned Gtk.FileFilter get_filter ();
		public Hildon.FileSelectionMode get_mode ();
		public bool get_select_multiple ();
		public unowned GLib.SList get_selected_paths ();
		public unowned GLib.SList get_selected_uris ();
		public void get_sort_key (Hildon.FileSelectionSortKey key, Gtk.SortType order);
		public void hide_content_pane ();
		public void move_cursor_to_uri (string uri);
		public void select_all ();
		public bool select_uri (string uri) throws GLib.Error;
		public void set_column_headers_visible (bool visible);
		public bool set_current_folder_uri (string folder) throws GLib.Error;
		public void set_filter (Gtk.FileFilter filter);
		public void set_mode (Hildon.FileSelectionMode mode);
		public void set_select_multiple (bool select_multiple);
		public void set_sort_key (Hildon.FileSelectionSortKey key, Gtk.SortType order);
		public void show_content_pane ();
		public void undim_all ();
		public void unselect_all ();
		public void unselect_uri (string uri);
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public FileSelection.with_model (Hildon.FileSystemModel model);
		[NoAccessorMethod]
		public int active_pane { get; set; }
		[NoAccessorMethod]
		public bool drag_enabled { get; construct; }
		[NoAccessorMethod]
		public string empty_text { owned get; set; }
		[NoAccessorMethod]
		public bool local_only { get; set; }
		[NoAccessorMethod]
		public Hildon.FileSystemModel model { owned get; construct; }
		[NoAccessorMethod]
		public int pane_position { get; set construct; }
		[NoAccessorMethod]
		public void* safe_folder { get; set; }
		[NoAccessorMethod]
		public bool show_hidden { get; set; }
		[NoAccessorMethod]
		public bool show_upnp { get; set construct; }
		[NoAccessorMethod]
		public int visible_columns { get; construct; }
		public virtual signal void content_pane_context_menu ();
		public virtual signal void current_folder_changed ();
		public virtual signal void file_activated ();
		public virtual signal void location_insensitive (Gtk.TreeIter iter);
		public virtual signal void navigation_pane_context_menu ();
		public virtual signal void selection_changed ();
		public virtual signal void uris_dropped (string destination, void* sources);
	}
	[CCode (cheader_filename = "hildon/hildon-file-system-info.h")]
	[Compact]
	public class FileSystemInfo {
		[CCode (has_construct_function = false)]
		public FileSystemInfo (string uri) throws GLib.Error;
		public static void async_cancel (Hildon.FileSystemInfoHandle handle);
		public static unowned Hildon.FileSystemInfoHandle async_new (string uri, Hildon.FileSystemInfoCallback callback);
		public unowned string get_display_name ();
		public unowned Gdk.Pixbuf get_icon (Gtk.Widget ref_widget);
		public unowned Gdk.Pixbuf get_icon_at_size (Gtk.Widget ref_widget, int size);
	}
	[CCode (cheader_filename = "hildon/hildon-file-system-info.h")]
	[Compact]
	public class FileSystemInfoHandle {
	}
	[CCode (cheader_filename = "hildon/hildon-file-system-model.h")]
	public class FileSystemModel : GLib.Object, Gtk.TreeModel, Gtk.TreeDragSource {
		[CCode (has_construct_function = false)]
		protected FileSystemModel ();
		public unowned string autoname_uri (string uri) throws GLib.Error;
		[CCode (has_construct_function = false, type = "gchar*")]
		public FileSystemModel.item (Hildon.FileSystemModel model, Gtk.TreeIter parent, string stub_name, string extension);
		public void iter_available (Gtk.TreeIter iter, bool available);
		public bool load_local_path (string path, Gtk.TreeIter iter);
		public bool load_uri (string uri, Gtk.TreeIter iter);
		public void reset_available ();
		public bool search_local_path (string path, Gtk.TreeIter iter, Gtk.TreeIter start_iter, bool recursive);
		public bool search_uri (string uri, Gtk.TreeIter iter, Gtk.TreeIter start_iter, bool recursive);
		[NoAccessorMethod]
		public string backend { owned get; construct; }
		[NoAccessorMethod]
		public void* backend_object { get; construct; }
		[NoAccessorMethod]
		public bool multi_root { get; construct; }
		[NoAccessorMethod]
		public Gtk.Widget ref_widget { owned get; set; }
		[NoAccessorMethod]
		public string root_dir { owned get; construct; }
		[NoAccessorMethod]
		public void* thumbnail_callback { get; set; }
		public virtual signal void device_disconnected (Gtk.TreeIter iter);
		public virtual signal void finished_loading (Gtk.TreeIter iter);
	}
	[CCode (cheader_filename = "hildon/hildon-file-system-storage-dialog.h")]
	public class FileSystemStorageDialog : Gtk.Dialog, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false, type = "GtkWidget*")]
		public FileSystemStorageDialog (Gtk.Window parent, string uri_str);
		public static void set_uri (Gtk.Widget widget, string uri_str);
	}
	[CCode (cheader_filename = "hildon/hildon-file-selection.h", cprefix = "HILDON_FILE_SELECTION_MODE_", has_type_id = false)]
	public enum FileSelectionMode {
		LIST,
		THUMBNAILS
	}
	[CCode (cheader_filename = "hildon/hildon-file-selection.h", cprefix = "HILDON_FILE_SELECTION_PANE_", has_type_id = false)]
	public enum FileSelectionPane {
		NAVIGATION,
		CONTENT
	}
	[CCode (cheader_filename = "hildon/hildon-file-selection.h", cprefix = "HILDON_FILE_SELECTION_SORT_", has_type_id = false)]
	public enum FileSelectionSortKey {
		NAME,
		TYPE,
		MODIFIED,
		SIZE
	}
	[CCode (cheader_filename = "hildon/hildon-file-selection.h", cprefix = "HILDON_FILE_SELECTION_SHOW_", has_type_id = false)]
	public enum FileSelectionVisibleColumns {
		NAME,
		MODIFIED,
		SIZE,
		ALL
	}
	[CCode (cheader_filename = "hildon/hildon-file-system-model.h", cprefix = "HILDON_FILE_SYSTEM_MODEL_", has_type_id = false)]
	public enum FileSystemModelColumns {
		COLUMN_GTK_PATH_INTERNAL,
		COLUMN_LOCAL_PATH,
		COLUMN_URI,
		COLUMN_FILE_NAME,
		COLUMN_DISPLAY_NAME,
		COLUMN_SORT_KEY,
		COLUMN_MIME_TYPE,
		COLUMN_FILE_SIZE,
		COLUMN_FILE_TIME,
		COLUMN_IS_FOLDER,
		COLUMN_IS_AVAILABLE,
		COLUMN_HAS_LOCAL_PATH,
		COLUMN_TYPE,
		COLUMN_ICON,
		COLUMN_ICON_EXPANDED,
		COLUMN_ICON_COLLAPSED,
		COLUMN_THUMBNAIL,
		COLUMN_LOAD_READY,
		COLUMN_FREE_SPACE,
		COLUMN_TITLE,
		COLUMN_AUTHOR,
		COLUMN_IS_HIDDEN,
		COLUMN_UNAVAILABLE_REASON,
		COLUMN_FAILED_ACCESS_MESSAGE,
		COLUMN_SORT_WEIGHT,
		COLUMN_EXTRA_INFO,
		COLUMN_IS_DRIVE,
		NUM_COLUMNS
	}
	[CCode (cheader_filename = "hildon/hildon-file-system-model.h", cprefix = "HILDON_FILE_SYSTEM_MODEL_", has_type_id = false)]
	public enum FileSystemModelItemType {
		UNKNOWN,
		FILE,
		FOLDER,
		SAFE_FOLDER_IMAGES,
		SAFE_FOLDER_VIDEOS,
		SAFE_FOLDER_SOUNDS,
		SAFE_FOLDER_DOCUMENTS,
		SAFE_FOLDER_GAMES,
		MMC,
		GATEWAY,
		LOCAL_DEVICE
	}
	[CCode (cheader_filename = "hildon/hildon-file-system-info.h")]
	public delegate void FileSystemInfoCallback (Hildon.FileSystemInfoHandle handle, Hildon.FileSystemInfo info, GLib.Error error);
	[CCode (cheader_filename = "hildon/hildon-file-system-model.h", has_target = false)]
	public delegate bool FileSystemModelThumbnailCallback (string uri, string path, string thumbnail_file);
}
