const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const config_h = b.addConfigHeader(.{
        .style = .{ .autoconf = b.path("src/config.h.in") },
        .include_path = "config.h",
    }, .{
        .AC_APPLE_UNIVERSAL_BUILD = null,
        .DEFAULT_DB_PATH = "/var/cache/minidlna",
        .DEFAULT_LOG_PATH = "/var/log",
        .ENABLE_NLS = 1,
        .HAVE_ARPA_INET_H = 1,
        .HAVE_ASM_UNISTD_H = 1,
        .HAVE_AVAHI = 1,
        .HAVE_AVAHI_COMMON_THREAD_WATCH_H = 1,
        .HAVE_AVCODEC_H = null,
        .HAVE_AVFORMAT_H = null,
        .HAVE_AVUTIL_H = null,
        .HAVE_CFLOCALECOPYPREFERREDLANGUAGES = null,
        .HAVE_CFPREFERENCESCOPYAPPVALUE = null,
        .HAVE_CLOCK_GETTIME = 1,
        .HAVE_CLOCK_GETTIME_SYSCALL = 1,
        .HAVE_DARWIN_SENDFILE_API = null,
        .HAVE_DCGETTEXT = 1,
        .HAVE_DECL_SEEK_HOLE = 1,
        .HAVE_DIRENT_H = 1,
        .HAVE_ENDIAN_H = 1,
        .HAVE_FCNTL_H = 1,
        .HAVE_FFMPEG_AVCODEC_H = null,
        .HAVE_FFMPEG_AVFORMAT_H = null,
        .HAVE_FFMPEG_AVUTIL_H = null,
        .HAVE_FFMPEG_LIBAVCODEC_AVCODEC_H = null,
        .HAVE_FFMPEG_LIBAVFORMAT_AVFORMAT_H = null,
        .HAVE_FFMPEG_LIBAVUTIL_AVUTIL_H = null,
        .HAVE_FLAC = 1,
        .HAVE_FLAC_ALL_H = 1,
        .HAVE_FLAC_METADATA_H = 1,
        .HAVE_FORK = 1,
        .HAVE_FREEBSD_SENDFILE_API = null,
        .HAVE_GETHOSTNAME = 1,
        .HAVE_GETIFADDRS = 1,
        .HAVE_GETTEXT = 1,
        .HAVE_GETTIMEOFDAY = 1,
        .HAVE_ICONV = 1,
        .HAVE_ID3TAG_H = 1,
        .HAVE_INET_NTOA = 1,
        .HAVE_INOTIFY = 1,
        .HAVE_INOTIFY_INIT = 1,
        .HAVE_INTTYPES_H = 1,
        .HAVE_JPEGLIB_H = 1,
        .HAVE_KQUEUE = null,
        .HAVE_LIBAVCODEC_AVCODEC_H = 1,
        .HAVE_LIBAVFORMAT_AVFORMAT_H = 1,
        .HAVE_LIBAVUTIL_AVUTIL_H = 1,
        .HAVE_LIBAV_AVCODEC_H = null,
        .HAVE_LIBAV_AVFORMAT_H = null,
        .HAVE_LIBAV_AVUTIL_H = null,
        .HAVE_LIBAV_LIBAVCODEC_AVCODEC_H = null,
        .HAVE_LIBAV_LIBAVFORMAT_AVFORMAT_H = null,
        .HAVE_LIBAV_LIBAVUTIL_AVUTIL_H = null,
        .HAVE_LIBEXIF_EXIF_LOADER_H = null,
        .HAVE_LIBINTL_H = null,
        .HAVE_LIBPTHREAD = null,
        .HAVE_LINUX_SENDFILE_API = null,
        .HAVE_LOCALE_H = null,
        .HAVE_MACHINE_ENDIAN_H = null,
        .HAVE_MACH_MACH_TIME_H = null,
        .HAVE_MEMMOVE = 1,
        .HAVE_MEMSET = 1,
        .HAVE_MINIX_CONFIG_H = null,
        .HAVE_MKDIR = 1,
        .HAVE_NDIR_H = null,
        .HAVE_NETDB_H = 1,
        .HAVE_NETINET_IN_H = 1,
        .HAVE_NETLINK = 1,
        .HAVE_OGG_OGG_H = 1,
        .HAVE_POLL_H = 1,
        .HAVE_REALPATH = 1,
        .HAVE_SELECT = 1,
        .HAVE_SENDFILE = 1,
        .HAVE_SETLOCALE = 1,
        .HAVE_SOCKET = 1,
        .HAVE_SQLITE3_H = 1,
        .HAVE_SQLITE3_MALLOC = 1,
        .HAVE_SQLITE3_PREPARE_V2 = 1,
        .HAVE_STDBOOL_H = 1,
        .HAVE_STDDEF_H = 1,
        .HAVE_STDINT_H = 1,
        .HAVE_STDIO_H = 1,
        .HAVE_STDLIB_H = 1,
        .HAVE_STRCASECMP = 1,
        .HAVE_STRCHR = 1,
        .HAVE_STRDUP = 1,
        .HAVE_STRERROR = 1,
        .HAVE_STRINGS_H = 1,
        .HAVE_STRING_H = 1,
        .HAVE_STRNCASECMP = 1,
        .HAVE_STRPBRK = 1,
        .HAVE_STRRCHR = 1,
        .HAVE_STRSTR = 1,
        .HAVE_STRTOL = 1,
        .HAVE_STRTOUL = 1,
        .HAVE_STRUCT_DIRENT_D_TYPE = 1,
        .HAVE_STRUCT_IP_MREQ = null,
        .HAVE_STRUCT_IP_MREQN = {},
        .HAVE_STRUCT_STAT_ST_BLOCKS = 1,
        .HAVE_ST_BLOCKS = 1,
        .HAVE_SYSCALL_H = 1,
        .HAVE_SYS_DIR_H = null,
        .HAVE_SYS_FILE_H = 1,
        .HAVE_SYS_INOTIFY_H = 1,
        .HAVE_SYS_IOCTL_H = 1,
        .HAVE_SYS_NDIR_H = null,
        .HAVE_SYS_PARAM_H = 1,
        .HAVE_SYS_QUEUE_H = 1,
        .HAVE_SYS_SOCKET_H = 1,
        .HAVE_SYS_STAT_H = 1,
        .HAVE_SYS_SYSCALL_H = 1,
        .HAVE_SYS_TIME_H = 1,
        .HAVE_SYS_TYPES_H = 1,
        .HAVE_UNISTD_H = 1,
        .HAVE_VFORK = 1,
        .HAVE_VFORK_H = null,
        .HAVE_VORBISFILE = 1,
        .HAVE_VORBIS_CODEC_H = 1,
        .HAVE_VORBIS_VORBISFILE_H = 1,
        .HAVE_WCHAR_H = 1,
        .HAVE_WORKING_FORK = 1,
        .HAVE_WORKING_VFORK = 1,
        .HAVE__BOOL = 1,
        .ICONV_CONST = {},
        .LOG_PERROR = null,
        .LSTAT_FOLLOWS_SLASHED_SYMLINK = 1,
        .NETGEAR = null,
        .OS_NAME = "Linux",
        .OS_URL = "http://www.netgear.com",
        .OS_VERSION = "6.11.6-arch1-1",
        .PACKAGE = "minidlna",
        .PACKAGE_BUGREPORT = "",
        .PACKAGE_NAME = "MiniDLNA",
        .PACKAGE_STRING = "MiniDLNA 1.1.3",
        .PACKAGE_TARNAME = "minidlna",
        .PACKAGE_URL = "",
        .PACKAGE_VERSION = "1.1.3",
        .READYNAS = null,
        .ROOTDEV_MANUFACTURER = "Justin Maggard",
        .ROOTDEV_MANUFACTURERURL = "http://www.netgear.com/",
        .ROOTDEV_MODELDESCRIPTION = "\"MiniDLNA on \" OS_NAME",
        .ROOTDEV_MODELNAME = "Windows Media Connect compatible (MiniDLNA)",
        .ROOTDEV_MODELURL = "OS_URL",
        .SCANDIR_CONST = 1,
        .SOLARIS = null,
        .SOLARIS_KSTATS = null,
        .STDC_HEADERS = 1,
        .TIVO_SUPPORT = null,
        .USE_DAEMON = 1,
        .USE_IPF = null,
        ._ALL_SOURCE = 1,
        ._DARWIN_C_SOURCE = 1,
        .__EXTENSIONS__ = 1,
        ._GNU_SOURCE = 1,
        ._HPUX_ALT_XOPEN_SOCKET_API = 1,
        ._MINIX = null,
        ._NETBSD_SOURCE = 1,
        ._OPENBSD_SOURCE = 1,
        ._POSIX_SOURCE = null,
        ._POSIX_1_SOURCE = null,
        ._POSIX_PTHREAD_SEMANTICS = 1,
        .__STDC_WANT_IEC_60559_ATTRIBS_EXT__ = 1,
        .__STDC_WANT_IEC_60559_BFP_EXT__ = 1,
        .__STDC_WANT_IEC_60559_DFP_EXT__ = 1,
        .__STDC_WANT_IEC_60559_EXT__ = 1,
        .__STDC_WANT_IEC_60559_FUNCS_EXT__ = 1,
        .__STDC_WANT_IEC_60559_TYPES_EXT__ = 1,
        .__STDC_WANT_LIB_EXT2__ = 1,
        .__STDC_WANT_MATH_SPEC_FUNCS__ = 1,
        ._TANDEM_SOURCE = 1,
        ._XOPEN_SOURCE = null,
        .VERSION = "1.1.3",
        .WORDS_BIGENDIAN = null,
        ._UINT32_T = null,
        ._UINT64_T = null,
        ._UINT8_T = null,
        .@"inline" = null,
        .int32_t = null,
        .mode_t = null,
        .off_t = null,
        .pid_t = null,
        .size_t = null,
        .ssize_t = null,
        .uint32_t = null,
        .uint64_t = null,
        .uint8_t = null,
        .vfork = null,
    });

    const ogg_dep = b.dependency("ogg", .{
        .target = target,
        .optimize = optimize,
    });

    const exif_dep = b.dependency("exif", .{
        .target = target,
        .optimize = optimize,
    });

    const jpeg_dep = b.dependency("jpeg", .{
        .target = target,
        .optimize = optimize,
    });

    const flac_dep = b.dependency("flac", .{
        .target = target,
        .optimize = optimize,
    });

    const vorbis_dep = b.dependency("vorbis", .{
        .target = target,
        .optimize = optimize,
    });

    const id3tag_dep = b.dependency("id3tag", .{
        .target = target,
        .optimize = optimize,
    });

    const ffmpeg_dep = b.dependency("ffmpeg", .{
        .target = target,
        .optimize = optimize,
    });

    const minidlna_dep = b.dependency("minidlna", .{});

    const exe = b.addExecutable(.{
        .name = "minidlnad",
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    exe.addConfigHeader(config_h);
    exe.linkLibrary(ogg_dep.artifact("ogg"));
    exe.linkLibrary(jpeg_dep.artifact("jpeg"));
    exe.linkLibrary(jpeg_dep.artifact("jpeg12"));
    exe.linkLibrary(jpeg_dep.artifact("jpeg16"));
    exe.linkLibrary(flac_dep.artifact("flac"));
    exe.linkLibrary(exif_dep.artifact("exif"));
    exe.linkLibrary(id3tag_dep.artifact("id3tag"));
    exe.linkLibrary(ffmpeg_dep.artifact("ffmpeg"));
    exe.linkLibrary(vorbis_dep.artifact("vorbis"));
    exe.addCSourceFiles(.{
        .root = minidlna_dep.path("."),
        .files = &minidlna_src,
        .flags = &.{},
    });
    exe.addCSourceFiles(.{
        .files = &sqlite_src,
        .flags = &.{},
    });
    exe.addIncludePath(b.path("src"));
    exe.addIncludePath(minidlna_dep.path("."));
    b.installArtifact(exe);

    const run_cmd = b.addRunArtifact(exe);
    run_cmd.step.dependOn(b.getInstallStep());

    if (b.args) |args| {
        run_cmd.addArgs(args);
    }

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);

    const exe_unit_tests = b.addTest(.{
        .root_source_file = b.path("src/main.zig"),
        .target = target,
        .optimize = optimize,
    });

    const run_exe_unit_tests = b.addRunArtifact(exe_unit_tests);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_exe_unit_tests.step);
}

const minidlna_src = [_][]const u8{
    "clients.c",
    "image_utils.c",
    "options.c",
    "getifaddr.c",
    "log.c",
    "containers.c",
    "upnphttp.c",
    "minidlna.c",
    "process.c",
    "scanner.c",
    "tivo_utils.c",
    "albumart.c",
    "avahi.c",
    "uuid.c",
    "upnpsoap.c",
    "upnpevents.c",
    "select.c",
    "metadata.c",
    "upnpglobalvars.c",
    "utils.c",
    "monitor_inotify.c",
    "upnpreplyparse.c",
    "tagutils/tagutils.c",
    "sql.c",
    "tivo_beacon.c",
    "minissdp.c",
    "playlist.c",
    "upnpdescgen.c",
    "minixml.c",
    "monitor.c",
    "tivo_commands.c",
};

const sqlite_src = [_][]const u8{
    "src/sqlite3.c",
};
